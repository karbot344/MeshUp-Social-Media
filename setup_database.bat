@echo off
echo ========================================
echo    Setting Up Database
echo ========================================
echo.

REM Activate virtual environment if it exists
if exist "venv\Scripts\activate.bat" (
    call venv\Scripts\activate.bat
)

echo Step 1: Creating migrations...
python manage.py makemigrations
echo.

echo Step 2: Applying migrations to create database tables...
python manage.py migrate
echo.

echo ========================================
echo    Database setup complete!
echo    Now you can create a superuser:
echo    python manage.py createsuperuser
echo ========================================
pause






