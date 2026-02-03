@echo off

set parent=%1
set filename=%2

if "%parent%"=="" goto usage
if "%filename%"=="" goto usage

for /d %%i in ("%parent%\*") do (
    if exist "%%i\%filename%" (
        del /f /q "%%i\%filename%"
        echo Deleted %%i\%filename%
    ) else (
        echo File not found in %%i
    )
)

echo Done!
exit /b

:usage
echo Usage: remove_file_from_subdirs.bat parentFolder fileName
