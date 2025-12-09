# Fixing Pillow Installation Error on Windows

## Solution 1: Install Pillow Separately (Easiest)

Try installing Pillow separately with a pre-built wheel:

```powershell
pip install --upgrade pip
pip install pillow
```

Then install Django:
```powershell
pip install django==4.2.7
```

## Solution 2: Use Latest Versions

Update requirements.txt to use latest compatible versions:

```powershell
pip install --upgrade pip
pip install django pillow
```

## Solution 3: Install Without Pillow First

If you want to test without image uploads first:

1. Install Django only:
```powershell
pip install django==4.2.7
```

2. Comment out Pillow in requirements.txt temporarily
3. Run migrations and start server
4. Come back to install Pillow later

## Solution 4: Use Pre-built Wheel

Force pip to use pre-built wheels:

```powershell
pip install --upgrade pip setuptools wheel
pip install --only-binary :all: pillow
pip install django==4.2.7
```

## Solution 5: Install Visual C++ Build Tools (If above don't work)

Pillow needs compilation tools. Install:
- Visual Studio Build Tools: https://visualstudio.microsoft.com/downloads/
- Or install "Microsoft C++ Build Tools"

Then try installing Pillow again.






