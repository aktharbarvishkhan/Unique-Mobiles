@echo off
echo ===================================================
echo   Starting Unique Mobiles Marketplace Application
echo ===================================================
echo.
echo Launching services...
start cmd /k start-backend.bat
start cmd /k start-frontend.bat
echo.
echo [Success] Both services have been launched in separate terminal windows:
echo - Backend API: http://localhost:5000
echo - Frontend Website: http://localhost:3000
echo.
echo Keep this window open if you want, or close it. Press any key to exit.
pause > nul
