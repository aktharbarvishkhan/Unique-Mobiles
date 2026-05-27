@echo off
title Unique Mobiles Frontend Dev Server
cd frontend
if exist "..\.node\node.exe" (
  echo [Info] Launching Vite development server using local Node.js environment...
  set "PATH=%cd%\..\.node;%PATH%"
  "..\.node\node.exe" "..\.node\node_modules\npm\bin\npm-cli.js" run dev
) else (
  echo [Info] Launching Vite development server using system Node.js...
  npm run dev
)
pause
