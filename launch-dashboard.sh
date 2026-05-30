#!/bin/bash
clear
echo "========================================================"
echo "           CAREER-OPS TUI DASHBOARD LAUNCHER"
echo "========================================================"
echo ""
echo "[INFO] Setting working directory..."
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "$DIR"
echo "[INFO] Workspace root: $DIR"
echo ""
echo "[INFO] Transitioning to dashboard directory..."
cd dashboard
echo "[INFO] Starting Career-Ops Dashboard..."
go run main.go -path ..
if [ $? -ne 0 ]; then
    echo ""
    echo "[ERROR] Failed to launch the dashboard."
    echo "Please make sure Go is installed and configured on your PATH."
    echo "If you haven't initialized dependencies, try:"
    echo "  go mod tidy"
    echo ""
    read -p "Press enter to continue..."
fi
