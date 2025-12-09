@echo off
echo ========================================
echo    Fixing Database Migrations
echo ========================================
echo.

REM Activate virtual environment if it exists
if exist "venv\Scripts\activate.bat" (
    call venv\Scripts\activate.bat
)

echo Step 1: Creating migrations for all apps...
python manage.py makemigrations
echo.

echo Step 2: Applying all migrations to create database tables...
python manage.py migrate
echo.

echo ========================================
echo    Database setup complete!
echo    All tables should now exist.
echo    Try accessing the site again.
echo ========================================
pause






