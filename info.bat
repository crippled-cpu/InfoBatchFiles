@echo off
call scripts\cleanup.bat
cd info
call ..\scripts\nonelevated.bat
cd ..
call scripts\ziparchive.bat