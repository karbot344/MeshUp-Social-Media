@echo off
echo ========================================
echo    Fixing Pillow Installation
echo ========================================
echo.

REM Upgrade pip first
echo Upgrading pip...
python -m pip install --upgrade pip
echo.

REM Install Pillow separately (this usually works better)
echo Installing Pillow...
pip install pillow
echo.

REM Install Django
echo Installing Django...
pip install django==4.2.7
echo.

echo ========================================
echo    Installation Complete!
echo    Now run: python manage.py migrate
echo ========================================
pause






