@echo off
:: Script to clear the icon cache and restart Windows Explorer

:: Check for Administrator privileges
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo Prompting for Administrator access...
    powershell -Command "Start-Process -FilePath '%~f0' -ArgumentList '-runElevated' -Verb RunAs"
    exit /b
)

:: Confirm clearing icon cache
set /p clearCache="Are you sure you want to clear the icon cache? (Y/N): "
if /i not "%clearCache%"=="Y" (
    echo Operation cancelled by user.
    pause
    exit /b
)

:: Clear the icon cache using ie4uinit.exe
echo Clearing icon cache...
ie4uinit.exe -ClearIconCache
if %errorLevel% neq 0 (
    echo Error clearing icon cache.
    pause
    exit /b
)

:: Restart Windows Explorer
echo Restarting Windows Explorer...
taskkill /f /im explorer.exe >nul
if %errorLevel% neq 0 (
    echo Error stopping Windows Explorer.
    pause
    exit /b
)
timeout /t 3 >nul
start explorer.exe
if %errorLevel% neq 0 (
    echo Error starting Windows Explorer.
    pause
    exit /b
)

echo Operation completed successfully.
pause
exit /b