@echo off
title Career-Ops Dashboard
cls
echo ========================================================
echo            CAREER-OPS TUI DASHBOARD LAUNCHER
echo ========================================================
echo.
echo [INFO] Setting working directory...
cd /d "%~dp0"
echo [INFO] Workspace root: %CD%
echo.
echo [INFO] Transitioning to dashboard directory...
cd dashboard
echo [INFO] Starting Career-Ops Dashboard...
go run main.go -path ..
if %ERRORLEVEL% neq 0 (
    echo.
    echo [ERROR] Failed to launch the dashboard.
    echo Please make sure Go is installed and configured on your PATH.
    echo If you haven't initialized dependencies, try:
    echo   go mod tidy
    echo.
    pause
)
