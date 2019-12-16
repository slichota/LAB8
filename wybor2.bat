@echo off
:BEGIN

echo 1. Wypisz date
echo 2. Wypisz godzine
echo 3. Uruchom notatnik
echo 4. Wyswietl strone glowna UG
echo 5. Zakoncz
CHOICE /c:12345
if errorlevel 5 goto END
if errorlevel 4 goto UG
if errorlevel 3 goto NOTATNIK
if errorlevel 2 goto GODZINA
if errorlevel 1 goto DATA
:DATA
echo %DATE%
goto BEGIN
:GODZINA
echo %TIME%
goto BEGIN
:NOTATNIK
start notepad
goto BEGIN
:UG
start https://ug.edu.pl/
goto BEGIN
:END
