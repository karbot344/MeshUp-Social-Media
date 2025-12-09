# MeshUp - Social Media Platform

A modern social media platform built with Django (backend) and HTML/CSS/JavaScript (frontend).

## Features

- **User Authentication**: Register, login, and logout
- **User Profiles**: Customizable profiles with bio, profile picture, location, and website
- **Posts**: Create and share posts with text and images
- **Comments**: Comment on posts
- **Likes**: Like and unlike posts
- **Follow System**: Follow and unfollow other users
- **Feed**: View posts from users you follow
- **Explore**: Discover posts from all users
- **Search**: Search for users

## Installation

1. **Clone the repository** (or navigate to the project directory)

2. **Create a virtual environment** (recommended):
   ```bash
   python -m venv venv
   ```

3. **Activate the virtual environment**:
   - On Windows:
     ```bash
     venv\Scripts\activate
     ```
   - On macOS/Linux:
     ```bash
     source venv/bin/activate
     ```

4. **Install dependencies**:
   ```bash
   pip install -r requirements.txt
   ```

5. **Run migrations**:
   ```bash
   python manage.py makemigrations
   python manage.py migrate
   ```

6. **Create a superuser** (optional, for admin access):
   ```bash
   python manage.py createsuperuser
   ```

7. **Run the development server**:
   ```bash
   python manage.py runserver
   ```

8. **Open your browser** and navigate to `http://127.0.0.1:8000/`

## Project Structure

```
MeshUp/
├── core/                    # Main application
│   ├── models.py           # Database models
│   ├── views.py            # View functions
│   ├── urls.py             # URL routing
│   ├── forms.py            # Django forms
│   └── templates/          # HTML templates
├── meshup/                  # Django project settings
│   ├── settings.py         # Project settings
│   └── urls.py             # Main URL configuration
├── static/                 # Static files (CSS, JS, images)
│   ├── css/
│   ├── js/
│   └── images/
├── media/                  # User uploaded files (created automatically)
├── manage.py               # Django management script
└── requirements.txt        # Python dependencies
```

## Usage

1. **Register a new account** or login with existing credentials
2. **Edit your profile** to add a bio, profile picture, and other details
3. **Create posts** to share your thoughts and images
4. **Follow other users** to see their posts in your feed
5. **Like and comment** on posts
6. **Explore** to discover new content
7. **Search** for users to connect with

## Technologies Used

- **Backend**: Django 4.2.7
- **Frontend**: HTML5, CSS3, JavaScript
- **Database**: SQLite (default, can be changed to PostgreSQL)
- **Icons**: Font Awesome 6.4.0

## Notes

- The default database is SQLite, which is suitable for development
- For production, consider switching to PostgreSQL
- Make sure to set `DEBUG = False` and configure `ALLOWED_HOSTS` for production
- Update the `SECRET_KEY` in `settings.py` for production use

## License

This project is open source and available for educational purposes.






