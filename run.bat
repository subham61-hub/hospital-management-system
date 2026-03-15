@echo off
echo Installing dependencies...
python -m pip install --upgrade -r requirements.txt
echo.
echo Applying database migrations...
python manage.py makemigrations
python manage.py migrate
echo.
echo Starting the Django development server...
python manage.py runserver