@echo off

set DIR=%~dp0.
set workspace=%DIR%\workspace
set output=%workspace%\output

if exist "%workspace%" rmdir /Q /S "%workspace%"
mkdir "%workspace%"
mkdir "%output%"
cd "%workspace%"

call npm init -y
call npm install --save "%DIR%\.."
cls

set PATH=%workspace%\node_modules\.bin;%PATH%

rem :: download an arbitrary zip file
set zip_url=https://github.com/cthackers/adm-zip/archive/refs/tags/v0.5.16.zip
set zip_fname=v0.5.16.zip
set zip_ignore_path=adm-zip-0.5.16/test
wget -nv --no-check-certificate "%zip_url%"

cd "%output%"

rem :: extract to cwd: "./workspace/output"
call extract-zip "../%zip_fname%" "." "%zip_ignore_path%"

mkdir "rel-subdir"
call extract-zip "../%zip_fname%" "rel-subdir" "%zip_ignore_path%"

mkdir "abs-subdir"
call extract-zip "%workspace%\%zip_fname%" "%output%\abs-subdir" "%zip_ignore_path%"

echo.
pause
