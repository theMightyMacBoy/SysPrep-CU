@Echo off

::::::::::::::::::::::::::::
:: Disables Administrator ::
::      Account           ::
::::::::::::::::::::::::::::

net user administrator /active:no

echo Removed Admin Account
ping 127.0.0.1 -n 3 > nul

:::::::::::::::::::::::::;:::
:: Executes joinDomain.ps1 ::
:::::::::::::::::::::::::::::

cd c:\windows\Setup\Scripts
powershell Set-ExecutionPolicy Unrestricted
powershell ./disableIPv6.ps1
powershell ./joinDomain.ps1


echo Join process completed.
ping 127.0.0.1 -n 2 > nul




::::::::::::::::::::::::::::
:: Reboots Computer for   ::
::    First Login         ::
::::::::::::::::::::::::::::

echo Cleaning up and rebooting
ping 127.0.0.1 -n 3 > nul

::shutdown -r -t 0
