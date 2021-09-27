@echo off
cd /D "%~dp0"
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)
call scripts\cleanup.bat
cd info
call ..\scripts\nonelevated.bat
call ..\scripts\elevated.bat
cd ..
call scripts\ziparchive.bat
