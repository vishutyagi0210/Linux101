@echo off
setlocal EnableDelayedExpansion

:: Arguments
set STAGE_PATH=%1
set START_STEP=%2
set END_STEP=%3

:: Validate arguments
if "%STAGE_PATH%"=="" goto usage
if "%START_STEP%"=="" goto usage
if "%END_STEP%"=="" goto usage

:: Create stage folder if it doesn't exist
if not exist "%STAGE_PATH%" (
    mkdir "%STAGE_PATH%"
)

:: Create base files
type nul > "%STAGE_PATH%\index.json"
type nul > "%STAGE_PATH%\intro.md"
type nul > "%STAGE_PATH%\finish.md"

:: Create step folders and files
for /L %%i in (%START_STEP%,1,%END_STEP%) do (
    if %%i LSS 10 (
        set STEP_NAME=step-0%%i
    ) else (
        set STEP_NAME=step-%%i
    )

    mkdir "%STAGE_PATH%\!STEP_NAME!" 2>nul
    type nul > "%STAGE_PATH%\!STEP_NAME!\text.md"
    type nul > "%STAGE_PATH%\!STEP_NAME!\verify.sh"
    type nul > "%STAGE_PATH%\!STEP_NAME!\setup.sh"
)

echo Stage created at: %STAGE_PATH%
echo Steps created: %START_STEP% to %END_STEP%
exit /b 0

:usage
echo Usage:
echo create_killercoda_stage.bat "C:\path\to\stage-folder" start_step end_step
echo Example:
echo create_killercoda_stage.bat "C:\stage" 8 14
exit /b 1
