@echo off
cd /d %~dp0

call venv\Scripts\activate.bat

echo Starting Flask server...
start http://127.0.0.1:5000

python main.py

pause