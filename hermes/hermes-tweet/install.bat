@echo off
REM install.bat - Install and enable Hermes Tweet plugin for Hermes Agent.

echo ====================================
echo  hermes-tweet plugin installer
echo ====================================
echo.

where hermes >nul 2>&1
if errorlevel 1 (
    echo [ERROR] hermes not found. Install Hermes Agent first.
    exit /b 1
)

hermes plugins install Xquik-dev/hermes-tweet --enable
if errorlevel 1 (
    echo [ERROR] Hermes Tweet install failed.
    exit /b 1
)

echo.
echo Installed hermes-tweet.
echo Set XQUIK_API_KEY in your local Hermes environment before using read tools.
echo Set HERMES_TWEET_ENABLE_ACTIONS=true only when write actions are intended.
pause
