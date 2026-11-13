@echo off
title Push Air Quality Monitoring to GitHub (tellapelihasini-9993)
color 0a

echo ====================================================================
echo   Pushing to https://github.com/tellapelihasini-9993/Air-Quality-Monitoring
echo ====================================================================
echo.
echo Target Repository: https://github.com/tellapelihasini-9993/Air-Quality-Monitoring
echo.
echo Press 1 to sign in with your Browser (Recommended)
echo Press 2 to paste a GitHub Personal Access Token
echo.
set /p CHOICE="Choose [1 or 2, default is 1]: "

if "%CHOICE%"=="2" (
    set /p TOKEN="Enter GitHub Token (with 'repo' scope): "
    echo.
    echo [INFO] Pushing using Personal Access Token...
    git remote set-url origin https://tellapelihasini-9993:%TOKEN%@github.com/tellapelihasini-9993/Air-Quality-Monitoring.git
    git push -u origin main
    git remote set-url origin https://github.com/tellapelihasini-9993/Air-Quality-Monitoring.git
) else (
    echo.
    echo [INFO] Opening Browser Authorization via Git Credential Manager...
    git push -u origin main
)

echo.
echo ====================================================================
echo   Complete! Check: https://github.com/tellapelihasini-9993/Air-Quality-Monitoring
echo ====================================================================
pause
