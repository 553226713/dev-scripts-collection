@echo off
REM Windows batch file to quickly initialize a new Node.js project

echo 🚀 Quick Node.js Project Setup

REM Check if Node.js is installed
node --version >nul 2>&1
if errorlevel 1 (
    echo ❌ Node.js is not installed!
    exit /b 1
)

REM Initialize package.json
echo 📦 Initializing package.json...
call npm init -y

REM Ask for package name
set /p PKG_NAME="Enter package name: "
call npm pkg set name=%PKG_NAME%

REM Ask for TypeScript
set /p TS="Use TypeScript? (y/n): "
if /i "%TS%"=="y" (
    echo 📝 Installing TypeScript...
    call npm install --save-dev typescript ts-node @types/node @types/express
    call npx tsc --init
)

REM Install common dependencies
echo 📚 Installing common dependencies...
call npm install express cors dotenv

echo ✅ Setup complete!
echo Run 'npm run dev' to start development server
