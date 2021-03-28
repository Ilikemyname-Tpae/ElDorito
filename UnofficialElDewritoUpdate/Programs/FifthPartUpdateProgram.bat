@echo off
:: Hide script commands
color F1
:: Make the program color as blue
title Unofficial ElDewrito 0.6.1.1 Updater
:: Create a program title
cls
:: Clean the program
echo ####################################
echo UNOFFICIAL ELDEWRITO 0.6.1.1 UPDATE
echo Made By Vaktor (Discord Vaktor#6484)
echo ####################################
echo.
:: Write the Description

:: Variables Definition
set newTagtoolPath=.\UnofficialElDewritoUpdate\Tools\TagTools\NewTagTool1.5.6841.16030\TagTool.exe
:: Load Halo Online New TagTool for porting
set fifthScriptPath=.\FifthPartUpdateScript.cmds
:: Load the fifth script for porting

move ".\FourthPartUpdateProgram.bat" ".\UnofficialElDewritoUpdate\Programs\FourthPartUpdateProgram.bat"
:: Close the fourth program

cls
:: Clean the program
echo.
echo #####################################################################################################
echo UPDATE INSTALLATION : FIFTH PART ( Patches ) - UNOFFICIAL ELDEWRITO 0.6.1.1
echo #####################################################################################################
echo.
move ".\UnofficialElDewritoUpdate\Scripts\FifthPartUpdateScript.cmds" ".\FifthPartUpdateScript.cmds"
echo.
Type %fifthScriptPath% | %newTagtoolPath%
echo.
move ".\logs\FifthPartLogs.log" ".\UnofficialElDewritoUpdate\Logs\FifthPartLogs.log"
rd /s /q logs
move ".\FifthPartUpdateScript.cmds" ".\UnofficialElDewritoUpdate\Scripts\FifthPartUpdateScript.cmds"
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
move ".\FifthPartUpdateProgram.bat" ".\UnofficialElDewritoUpdate\Programs\FifthPartUpdateProgram.bat
:: Close the fifth program
cls
:: Clean the program
exit
:: Shut down the program
