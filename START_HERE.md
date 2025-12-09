# 🚀 How to Start MeshUp - Step by Step Guide

## Prerequisites
- Python 3.8 or higher installed on your system
- pip (Python package installer)

## Step-by-Step Instructions

### Step 1: Open Terminal/Command Prompt
- Press `Win + R`, type `cmd` or `powershell`, and press Enter
- Or open PowerShell from the Start menu

### Step 2: Navigate to Project Directory
```bash
cd "C:\Users\krish\OneDrive\Desktop\Social-media"
```

### Step 3: Create Virtual Environment (Recommended)
```bash
python -m venv venv
```
This creates a folder called `venv` in your project directory.

### Step 4: Activate Virtual Environment
```bash
venv\Scripts\activate
```
You should see `(venv)` at the beginning of your command prompt.

### Step 5: Install Dependencies
```bash
pip install -r requirements.txt
```
This will install Django and Pillow (for image handling).

### Step 6: Create Database Migrations
```bash
python manage.py makemigrations
```
This creates migration files for your database models.

### Step 7: Apply Migrations
```bash
python manage.py migrate
```
This creates the database tables in `db.sqlite3`.

### Step 8: Create Superuser (Optional - for admin panel)
```bash
python manage.py createsuperuser
```
Follow the prompts to create an admin account. This is optional but useful for managing the site.

### Step 9: Start the Development Server
```bash
python manage.py runserver
```
You should see output like:
```
Starting development server at http://127.0.0.1:8000/
Quit the server with CTRL-BREAK.
```

### Step 10: Open in Browser
- Open your web browser
- Go to: `http://127.0.0.1:8000/` or `http://localhost:8000/`
- You should see the MeshUp login page!

## 🎉 You're Ready!

### First Steps After Starting:
1. **Register a new account** - Click on "Sign up" or go to `/register/`
2. **Create your profile** - Add a bio, profile picture, etc.
3. **Create your first post** - Share something with the community!
4. **Follow other users** - Connect with people
5. **Explore** - Discover posts from all users

## Quick Commands Reference

### To Stop the Server:
Press `CTRL + C` in the terminal

### To Start Again (after stopping):
Just run: `python manage.py runserver`

### To Access Admin Panel:
- Go to: `http://127.0.0.1:8000/admin/`
- Login with the superuser credentials you created

## Troubleshooting

### If you get "python is not recognized":
- Make sure Python is installed and added to PATH
- Try using `py` instead of `python`: `py manage.py runserver`

### If you get port already in use error:
- The port 8000 might be in use
- Use a different port: `python manage.py runserver 8080`
- Then access at: `http://127.0.0.1:8080/`

### If migrations fail:
- Make sure you're in the project directory
- Check that `manage.py` exists in the current folder

### If static files don't load:
- Make sure the `static` folder exists
- The CSS and JS files should be in `static/css/` and `static/js/`

## Need Help?
Check the main README.md file for more detailed information about the project structure and features.






