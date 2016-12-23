#############################################
## Use PowerSshell to bind computer to AD  ##
## Also removes all of the setup scripts   ##
#############################################


###############
## MAIN MENU ##
###############

Write-Host "
  Please enter your desired location [1-6] [Default 1]:
  
  1.  Branch One
  2.  Branch Two
  3.  Branch Three
  4.  Branch Four
  5.  Branch Five
  6.  Branch Six
" 
  $ou = Read-Host
 
$validate = $false

######################
## MAIN BRANCH MENU ##
######################

if ($ou -eq "" -or $ou -eq "1") { 
Write-Host "

Please enter your desired location [0-2] [Default 0]:
0.  Lower Level
1.  First Floor
2.  Second Floor
"
$mainou= Read-Host

if ($mainou -eq "" -or $mainou -eq "0") {
Add-Computer -DomainName "corp.com" -OUPath "OU=Lower Level,OU=01,OU=Computers,DC=Corp,DC=com" -Credential $(Get-Credential)
Set-ExecutionPolicy Restricted
}

if ($mainou -eq "1") { 
Add-Computer -DomainName "corp.com" -OUPath "OU=Lower Level,OU=01,OU=Computers,DC=Corp,DC=com" -Credential $(Get-Credential)
Set-ExecutionPolicy Restricted
}

if ($mainou -eq "2") {
Add-Computer -DomainName "corp.comm" -OUPath "OU=Lower Level,OU=01,OU=Computers,DC=Corp,DC=com" -Credential $(Get-Credential)
Set-ExecutionPolicy Restricted
} 

} 

######################
## 02 Branch ##
######################
if ($ou -eq "2") {
Add-Computer -DomainName "corp.com" -OUPath "OU=02,OU=Computers,DC=corp,DC=com" -Credential $(Get-Credential)
Set-ExecutionPolicy Restricted
}

####################
## 03 Branch ##
####################
if ($ou -eq "3") {
Add-Computer -DomainName "corp.com" -OUPath "OU=03,OU=Computers,DC=corp,DC=com" -Credential $(Get-Credential)
Set-ExecutionPolicy Restricted
}

#################
## 04 Branch ##
#################
if ($ou -eq "4") {
Add-Computer -DomainName "corp.com" -OUPath "OU=04,OU=Computers,DC=corp,DC=com" -Credential $(Get-Credential)
Set-ExecutionPolicy Restricted
}

###################
## 05 Branch ##
###################
if ($ou -eq "5") {
Add-Computer -DomainName "corp.com" -OUPath "OU=05,OU=Computers,DC=corp,DC=com" -Credential $(Get-Credential)
Set-ExecutionPolicy Restricted
}

##################
## 06 Branch##
##################
if ($ou -eq "6") {
Add-Computer -DomainName "corp.com" -OUPath "OU=06,OU=Computers,DC=corp,DC=com" -Credential $(Get-Credential)
Set-ExecutionPolicy Restricted
}

###############################
## Remove Scripts and Reboot ##
###############################
Get-ChildItem "c:\windows\Setup\Scripts" | Remove-Item -Recurse -Force
Restart-Computer
