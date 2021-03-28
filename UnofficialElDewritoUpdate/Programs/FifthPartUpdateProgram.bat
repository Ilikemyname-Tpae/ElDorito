@echo off
:: Hide script commands
color F1
:: Make the program color as blue
title ElDewrito 0.6.1.1 Updater
:: Create a program title
cls
:: Clean the program
echo ####################################
echo ELDEWRITO 0.6.1.1 UPDATE
echo Made By Vaktor (Discord Vaktor#8838)
echo ####################################
echo.
:: Write the Description

:: Variables Definition
set newTagtoolPath=.\ElDewritoUpdate\Tools\TagTools\NewTagTool1.5.6841.16030\TagTool.exe
:: Load Halo Online New TagTool for porting
set fifthScriptPath=.\FifthPartUpdateScript.cmds
:: Load the fifth script for porting

move ".\FourthPartUpdateProgram.bat" ".\ElDewritoUpdate\Programs\FourthPartUpdateProgram.bat"
:: Close the fourth program

cls
:: Clean the program
echo.
echo #####################################################################################################
echo UPDATE INSTALLATION : FIFTH PART ( Patches ) ; ELDEWRITO 0.6.1.1
echo #####################################################################################################
echo.
move ".\ElDewritoUpdate\Scripts\FifthPartUpdateScript.cmds" ".\FifthPartUpdateScript.cmds"
echo.
Type %fifthScriptPath% | %newTagtoolPath%
echo.
move ".\logs\FifthPartLogs.log" ".\ElDewritoUpdate\Logs\FifthPartLogs.log"
rd /s /q logs
move ".\FifthPartUpdateScript.cmds" ".\ElDewritoUpdate\Scripts\FifthPartUpdateScript.cmds"
echo.
echo #####################################################################################################
echo FIFTH PART : INSTALLATION COMPLETED
echo #####################################################################################################
echo.
::Installation of the fifth part of the Update

echo #####################################################################################################
echo PROGRAM SHUT DOWN
echo #####################################################################################################
pause
move ".\FifthPartUpdateProgram.bat" ".\ElDewritoUpdate\Programs\FifthPartUpdateProgram.bat
:: Close the fifth program
cls
:: Clean the program
exit
:: Shut down the program
