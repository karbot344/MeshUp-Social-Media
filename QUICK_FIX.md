# Quick Fix: "no such table: core_follow" Error

## The Problem
The database tables haven't been created yet. You need to run migrations.

## The Solution

**Run these commands in PowerShell (one at a time):**

### Step 1: Create Migration Files
```powershell
python manage.py makemigrations
```

You should see:
```
Migrations for 'core':
  core/migrations/0001_initial.py
    - Create model UserProfile
    - Create model Post
    - Create model Comment
    - Create model Like
    - Create model Follow
```

### Step 2: Apply Migrations (Create Tables)
```powershell
python manage.py migrate
```

You should see:
```
Operations to perform:
  Apply all migrations: admin, auth, contenttypes, core, sessions
Running migrations:
  Applying core.0001_initial... OK
  ...
```

### Step 3: Restart Your Server
Stop the server (CTRL+C) and start it again:
```powershell
python manage.py runserver
```

## OR Use the Quick Fix Script

Just double-click `fix_migrations.bat` - it will do everything for you!

## After This
The error should be gone and you can use the site normally!






