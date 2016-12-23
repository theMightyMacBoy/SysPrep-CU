:::::::::::::::::::::::::;:::
::  Executes ChangeIP.ps1  ::
:::::::::::::::::::::::::::::


cd c:\windows\Setup\Scripts
powershell Set-ExecutionPolicy Unrestricted
powershell ./ChangeIP.ps1

:::::::::::::::::::::::::;::::::
::  Displays IP to the scren  ::
::::::::::::::::::::::::::::::::


ipconfig
ping 127.0.0.1 -n 5 > nul
cls
ping google.com
