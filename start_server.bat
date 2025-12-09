@echo off
echo ========================================
echo    MeshUp Social Media Platform
echo    Starting Development Server...
echo ========================================
echo.

REM Check if virtual environment exists
if not exist "venv\" (
    echo Creating virtual environment...
    python -m venv venv
    echo.
)

REM Activate virtual environment
echo Activating virtual environment...
call venv\Scripts\activate.bat
echo.

REM Check if dependencies are installed
echo Checking dependencies...
pip show django >nul 2>&1
if errorlevel 1 (
    echo Installing dependencies...
    pip install -r requirements.txt
    echo.
)

REM Check if migrations have been run
if not exist "db.sqlite3" (
    echo Creating database migrations...
    python manage.py makemigrations
    echo.
    echo Applying migrations...
    python manage.py migrate
    echo.
)

REM Start the server
echo ========================================
echo    Server starting...
echo    Open http://127.0.0.1:8000 in your browser
echo    Press CTRL+C to stop the server
echo ========================================
echo.
python manage.py runserver

pause






