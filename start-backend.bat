@echo off
title Unique Mobiles Backend Server
cd backend
if exist "..\.node\node.exe" (
  echo [Info] Launching backend server using local Node.js environment...
  "..\.node\node.exe" server.js
) else (
  echo [Info] Launching backend server using system Node.js...
  node server.js
)
pause
