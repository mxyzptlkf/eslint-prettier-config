@echo off
setlocal EnableDelayedExpansion

REM Check if package.json exists, and if not, run npm init -y
if not exist "package.json" (
    echo Initializing npm package...
    call npm init -y
    if %ERRORLEVEL% neq 0 (
        echo Error: Failed to initialize npm package.
        pause
        exit /b 1
    )
)

echo Setting up ESLint configuration...
call npm init @eslint/config@latest
if %ERRORLEVEL% neq 0 (
    echo Error: ESLint configuration failed.
    pause
    exit /b 1
)

echo Installing ESLint and related dependencies...
call npm i -D eslint @eslint/js
if %ERRORLEVEL% neq 0 (
    echo Error: Failed to install ESLint core dependencies.
    pause
    exit /b 1
)

echo Installing Prettier and related plugins...
call npm i -D eslint-plugin-prettier eslint-config-prettier prettier
if %ERRORLEVEL% neq 0 (
    echo Error: Failed to install Prettier dependencies.
    pause
    exit /b 1
)

echo Setup complete!
cd eslint-prettier-config && call move-all.bat