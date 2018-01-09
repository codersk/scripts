@echo off
for /F "tokens=2 skip=2 delims=," %%D in ('WMIC Path Win32_LocalTime Get DayOfWeek /Format:csv') do @set myvar=%%D
set day="H"
set hour=%time:~0,2%
echo "Time is: %hour%"
if "%~1"=="w" (
  echo Day=%day%
  set hour=2
)

if %myvar% NEQ 0 set day="W"
if %myvar% GEQ 7 set day="H"

if %day% == "W" (
	echo "Its Weekday!"
	if %hour% GEQ 8 if %hour% LEQ 16 (
    echo "Lets begin the work."
    :: Open default browser and goto following link
    start "" "https://www.google.co.in"

    rem :: start "" C:\eclipse\eclipse.exe

    start /d "C:\Program Files\Sublime Text 3\" sublime_text.exe

    start "C:\wamp64\wampmanager.exe"

    "Outlook.lnk"

		goto inoffice
  )
  :afteroffice
	echo "But office time is over!"
)
if NOT %day% == "W" echo "Forget work, Its holiday and I'm at home"
:inoffice
echo "Bye Bye!!"

rem equ - equal
rem neq - not equal
rem lss - less than
rem leq - less than or equal
rem gtr - greater than
rem geq - greater than or equal