@echo off
title EndRun64 - SysPrepCU

:MENU
CLS

ECHO.
ECHO ...............................................
ECHO     PRESS 1-4 to select your task.
ECHO     PRESS 5 for HELP and 6 to EXIT.
ECHO ...............................................
ECHO.
ECHO 1 - Run cleanmgr.exe /sageset:4
ECHO 2 - Run cleanmgr.exe /sagerun:4
ECHO 3 - Run defrag.exe
ECHO 4 - Run Sysprep
ECHO 5 - HELP
ECHO 6 - Exit
ECHO.

SET /P M=Type 1-6, then press ENTER: 
IF %M%==1 GOTO DISKCLEAN1
IF %M%==2 GOTO DISKCLEAN2
IF %M%==3 GOTO DEFRAG
IF %M%==4 GOTO SYSPREP
IF %M%==5 GOTO README
IF %M%==6 GOTO EXIT


:DISKCLEAN1
c:\WINDOWS\system32\cleanmgr.exe /sageset:4
GOTO MENU

:DISKCLEAN2
c:\WINDOWS\system32\cleanmgr.exe /sagerun:4
GOTO MENU

:DEFRAG
CLS
c:\WINDOWS\system32\defrag C: /H /U
c:\WINDOWS\system32\defrag C: /H /X
GOTO MENU

:SYSPREP
c:
cd \windows\system32\sysprep
sysprep /generalize /oobe /shutdown /unattend:sysprep.xml

:ReadME
CLS
TYPE C:\Windows\Setup\Scripts\ReadMe.txt
PAUSE
GOTO MENU

:EXIT
