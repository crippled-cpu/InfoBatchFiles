tar.exe -a -c -f ..\info.zip *
if not exist info.zip (
   powershell "Set-Location ( \""%CD%"\");  Compress-Archive -Path \""%CD%"\*\"-Update -DestinationPath ..\info.zip "  
)