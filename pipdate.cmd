@echo off
if [%1] EQU [] (
    where python3 >nul 2>&1
    if %errorlevel%==1 (
        SET PY=python
    ) else (
        SET PY=python3
    )
) else (
    SET PY=%1
)
<nul (echo Searching for outdated packages using the following Python version:) 
%PY% -V
%PY% -m pip install -U pip
for /f "skip=2 tokens=1" %%a in ('%PY% -m pip list -o') do %PY% -m pip install -U %%a