rem Find suspicious files in directory and rename them
rem Usage: fsus.cmd <dirname>

@echo off
SETLOCAL
set extensions="\.lnk \.exe \.cmd \.scr \.bat"
echo looking in %1 for %extensions%
for /f %%F in ('dir %1 /s /b') do (
    (echo %%F | findstr /r %extensions% > NUL) && move %%F bad_%%F.BAD && echo Found %%F
    REM (echo %%F | findstr /r %extensions% > NUL) && echo Found %%F
)
ENDLOCAL