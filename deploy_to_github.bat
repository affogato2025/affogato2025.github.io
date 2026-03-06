@echo off
setlocal

echo Installing dependencies...
call npm install
if errorlevel 1 goto :error

call deploy.bat
if errorlevel 1 goto :error

echo.
echo Staging changes...
git add .

echo.
echo Committing static site update...
git commit -m "chore: regenerate site"
if errorlevel 1 (
  echo No changes to commit.
)

echo.
echo Pushing to origin/main...
git push origin main
if errorlevel 1 goto :error

echo.
echo Publish completed.
goto :eof

:error
echo.
echo Publish failed.
exit /b 1
