@echo off
setlocal
chcp 65001 >nul 2>&1
title Trinh Cai Dat & Quan Ly Server Minecraft (Win/Mac/Linux) - MC 1.21.11

set "SCRIPT_DIR=%~dp0"

where powershell >nul 2>&1
if errorlevel 1 (
    echo [LOI] Khong tim thay PowerShell tren Windows. Vui long cai dat PowerShell hoac chay bang tay.
    pause
    exit /b 1
)

powershell.exe -NoProfile -ExecutionPolicy Bypass -File "%SCRIPT_DIR%manager.ps1" %*
set "EXIT_CODE=%ERRORLEVEL%"

if not "%EXIT_CODE%"=="0" (
    echo.
    echo [CANH BAO] Chuong trinh ket thuc voi ma loi: %EXIT_CODE%
    pause
)
exit /b %EXIT_CODE%
