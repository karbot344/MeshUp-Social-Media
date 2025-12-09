# Fix: "no such table: core_userprofile" Error

## The Problem
You're trying to create a superuser before running database migrations. The database tables don't exist yet!

## The Solution

**You MUST run migrations BEFORE creating a superuser!**

### Correct Order:

1. **First, create migrations:**
   ```powershell
   python manage.py makemigrations
   ```
   You should see output like:
   ```
   Migrations for 'core':
     core/migrations/0001_initial.py
       - Create model UserProfile
       - Create model Post
       ...
   ```

2. **Then, apply migrations:**
   ```powershell
   python manage.py migrate
   ```
   You should see output like:
   ```
   Operations to perform:
     Apply all migrations: admin, auth, contenttypes, core, sessions
   Running migrations:
     Applying core.0001_initial... OK
     ...
   ```

3. **NOW you can create superuser:**
   ```powershell
   python manage.py createsuperuser
   ```

4. **Finally, start the server:**
   ```powershell
   python manage.py runserver
   ```

## If You Already Tried to Create Superuser

If you already tried and got an error, just run the migrations now:

```powershell
python manage.py makemigrations
python manage.py migrate
```

Then try creating the superuser again.

## Quick Fix Script

Run these commands in order:

```powershell
python manage.py makemigrations
python manage.py migrate
python manage.py createsuperuser
python manage.py runserver
```






