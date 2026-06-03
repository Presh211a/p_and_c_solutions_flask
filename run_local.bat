@echo off
REM Check if virtual environment folder exists
IF NOT EXIST "venv" (
    echo Creating virtual environment...
    python -m venv venv
)

REM Activate virtual environment
call venv\Scripts\activate

REM Install dependencies
echo Installing required packages...
pip install --upgrade pip
pip install -r requirements.txt

REM Run the Flask app
echo Starting the Flask app...
set FLASK_APP=app.py
set FLASK_ENV=development
flask run

pause
