@echo off
cd /d "%~dp0"

echo Проверка наличия Python...
python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo Python не найден!
    echo Установите Python с https://www.python.org/downloads/
    echo Затем снова запустите этот файл.
    pause
    exit /b
)

echo Запуск локального сервера на http://localhost:8000
echo Откройте в браузере: http://localhost:8000/index.html
echo.

start "" "http://localhost:8000/index.html"

python -m http.server 8000