tasklist /SVC > services.txt
tasklist /M > modulespertask.txt
tasklist > tasks.txt
tracert fantasy.cat > tracert.txt
ping fantasy.cat > ping.txt
systeminfo > systeminfo.txt
wmic OS GET /VALUE> operating-system.txt
sc query fantasy.driver > fantasy.driver-info.txt
driverquery /v > driverquery-output.txt
powershell "Get-WMIObject Win32_SystemDriver | Select DisplayName, PathName" > alldrivers.txt
powershell "Get-WMIObject Win32_SystemDriver | Where {$_.State -like \"*running*\"} | Select DisplayName, PathName" > runningdrivers.txt
powershell "Get-CimInstance -Class Win32_VideoController | Select-Object -Property Name, DriverVersion, DriverDate, Status" > gpuInfo.txt