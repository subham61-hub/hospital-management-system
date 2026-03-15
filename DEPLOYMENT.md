# 🚀 Deployment Guide for HMS

## Free Hosting Platforms

### 1. **Render** (Recommended for Django)

**Steps:**
1. Push your code to GitHub
2. Go to [render.com](https://render.com) → New → Web Service → Connect GitHub repo
3. **Runtime**: Python
4. **Build Command**: `pip install -r requirements.txt`
5. **Start Command**: `gunicorn hms_main.wsgi:application`
6. **Environment Variables**:
   ```
   PYTHON_VERSION=3.12
   DJANGO_SECRET_KEY=your-secret-key
   DATABASE_URL=postgres://...
   ```
7. Deploy! URL: `https://your-app.onrender.com`

### 2. **Railway**

1. [railway.app](https://railway.app) → New Project → Deploy from GitHub
2. Add PostgreSQL database (free tier available)
3. Set env vars:
   ```
   DJANGO_SECRET_KEY=...
   DATABASE_URL=from Railway DB
   ```
4. Railway auto-detects Django → Deploy!

### 3. **PythonAnywhere** (Beginner Friendly)

1. Sign up at [pythonanywhere.com](https://pythonanywhere.com)
2. Upload files via Files tab or git clone
3. **Web tab** → Add new web app → Manual configuration → Python 3.10
4. **Virtualenv**: `/home/yourusername/.virtualenvs/hms`
5. **WSGI file**: Edit to point to `hms_main.wsgi`
6. **Requirements**: `pip install -r requirements.txt --user`
7. **Static files**: Set STATIC_ROOT, run `python manage.py collectstatic`
8. Reload app!

## Database Migration

All platforms support PostgreSQL:

```bash
pip install psycopg2-binary
# Update settings.py DATABASE_URL
python manage.py migrate
```

## Production Settings

**.env file (for local testing):**
```
SECRET_KEY=your-super-secret-key
DEBUG=False
DATABASE_URL=postgres://user:pass@localhost/dbname
ALLOWED_HOSTS=yourdomain.com,*
EMAIL_MICROSERVICE_URL=https://your-email-service.com
```

## GitHub Repo Structure

```
HMS_Project/
├── manage.py
├── requirements.txt
├── hms_main/ (Django project)
├── hms_app/ (app with models/views)
├── templates/
├── static/
├── README.md
└── DEPLOYMENT.md
```

**Congratulations! Your HMS is now live online 🚀**

**Live Demo Example**: http://your-hospital-app.onrender.com

