@echo off
title Push Air Quality Monitoring to GitHub (tellapelihasini-9993)
color 0a

echo ====================================================================
echo   Pushing to https://github.com/tellapelihasini-9993/Air-Quality-Monitoring
echo ====================================================================
echo.
echo Please make sure the repository 'Air-Quality-Monitoring' is created at:
echo    https://github.com/new
echo.
set /p TOKEN="Enter GitHub Token (starts with ghp_ or github_pat_) or press Enter for browser login: "

if "%TOKEN%"=="" (
    echo.
    echo [INFO] Pushing with Git Credential Manager (browser popup will appear)...
    git push -u origin main
) else (
    echo.
    echo [INFO] Pushing using Personal Access Token...
    git remote set-url origin https://tellapelihasini-9993:%TOKEN%@github.com/tellapelihasini-9993/Air-Quality-Monitoring.git
    git push -u origin main
    git remote set-url origin https://github.com/tellapelihasini-9993/Air-Quality-Monitoring.git
)

echo.
echo ====================================================================
echo   Complete! Check https://github.com/tellapelihasini-9993/Air-Quality-Monitoring
echo ====================================================================
pause
