@echo off
setlocal EnableDelayedExpansion

:: Arguments
set STAGE_PATH=%1
set STEP_COUNT=%2



:: Validate arguments
if "%STAGE_PATH%"=="" goto usage
if "%STEP_COUNT%"=="" goto usage

:: Create stage folder if it doesn't exist
if not exist "%STAGE_PATH%" (
    mkdir "%STAGE_PATH%"
)


:: Create base files
type nul > "%STAGE_PATH%\index.json"
type nul > "%STAGE_PATH%\intro.md"
type nul > "%STAGE_PATH%\finish.md"

:: Create step folders and files
for /L %%i in (1,1,%STEP_COUNT%) do (
    if %%i LSS 10 (
        set STEP_NAME=step-0%%i
    ) else (
        set STEP_NAME=step-%%i
    )

    mkdir "%STAGE_PATH%\!STEP_NAME!" 2>nul
    type nul > "%STAGE_PATH%\!STEP_NAME!\text.md"
    type nul > "%STAGE_PATH%\!STEP_NAME!\verify.sh"
)

echo Stage created at: %STAGE_PATH%
echo Steps created: %STEP_COUNT%
exit /b 0

:usage
echo Usage:
echo create_killercoda_stage.bat "C:\path\to\stage-folder" number_of_steps
exit /b 1
