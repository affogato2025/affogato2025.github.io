@echo off
setlocal

echo Building Hexo site...
call npx hexo clean
if errorlevel 1 goto :error

call npx hexo generate
if errorlevel 1 goto :error

echo Syncing public files to repository root...
xcopy /E /I /Y "public\*" ".\" >nul
if errorlevel 1 goto :error

if not exist ".nojekyll" type nul > ".nojekyll"

echo.
echo Build completed. Run "git status" to review generated files.
goto :eof

:error
echo.
echo Build failed.
exit /b 1
