@echo off

set parent=%1
set filename=%2

if "%parent%"=="" goto usage
if "%filename%"=="" goto usage

for /d %%i in ("%parent%\*") do (
    type nul > "%%i\%filename%"
    echo Created %%i\%filename%
)

echo Done!
exit /b

:usage
echo Usage: create_file_in_subdirs.bat parentFolder fileName
