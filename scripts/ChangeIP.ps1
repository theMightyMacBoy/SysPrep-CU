###############################################
## Generate VB input box to gather IP/GW     ##
## Script assumes /16 SM and ICU DNS Servers ##
###############################################

Add-Type -AssemblyName Microsoft.VisualBasic

$IP      =  [Microsoft.VisualBasic.Interaction]::InputBox('Please Enter IP Address', 'IP Address','')
$Gateway =  [Microsoft.VisualBasic.Interaction]::InputBox('Please Enter Gateway', 'Gateway','')

$NetMask =  "255.255.0.0"
$DNSServers="10.1.1.83","10.1.1.10"

#############################################
## Use PowerSshell to configure IP Address ##
## Using static and user submitted data.   ##
#############################################

$adapter = Get-WmiObject win32_NetworkAdapterConfiguration `
    -filter "IPEnabled = 'true'"
$adapter.EnableStatic($IP, $NetMask)
Sleep -Seconds 4
$adapter.SetGateways($Gateway)
$adapter.SetDNSServerSearchOrder($DNSServers)
