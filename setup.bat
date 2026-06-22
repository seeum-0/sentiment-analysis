@echo off
cd /d %~dp0

echo ==============================
echo  SLM PROJECT SETUP STARTING
echo ==============================

:: Create venv if it doesn't exist
if not exist venv (
    echo Creating virtual environment...
    python -m venv venv
)

:: Activate venv
call venv\Scripts\activate.bat

echo Upgrading pip...
python -m pip install --upgrade pip

echo Installing dependencies...
pip install flask transformers torch

echo ==============================
echo  SETUP COMPLETE
echo ==============================

echo You can now run run.bat
pause