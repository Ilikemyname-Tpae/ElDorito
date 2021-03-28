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
set newTagtoolPath=.\UnofficialElDewritoUpdate\Tools\Tagtools\NewTagTool1.5.6841.16030\TagTool.exe
:: Load Halo Online New TagTool for porting
set firstScriptPath=.\FirstPartUpdateScript.cmds
:: Load the first script for porting

cls
:: Clean the program
echo #####################################################################################################
echo UPDATE INSTALLATION : FIRST PART ( Maps Patches ) - UNOFFICIAL ELDEWRITO 0.6.1.1
echo #####################################################################################################
echo.
move ".\UnofficialElDewritoUpdate\Scripts\FirstPartUpdateScript.cmds" ".\FirstPartUpdateScript.cmds"
echo.
Type %firstScriptPath% | %newTagtoolPath%
echo.
move ".\logs\FirstPartLogs.log" ".\UnofficialElDewritoUpdate\Logs\FirstPartLogs.log"
move ".\FirstPartUpdateScript.cmds" ".\UnofficialElDewritoUpdate\Scripts\FirstPartUpdateScript.cmds"
echo.
echo #####################################################################################################
echo FIRST PART : INSTALLATION COMPLETED
echo #####################################################################################################
echo.
::Installation of the first part of the Update

move ".\UnofficialElDewritoUpdate\Programs\SecondPartUpdateProgram.bat" ".\SecondPartUpdateProgram.bat"
:: Load the second program
".\SecondPartUpdateProgram.bat"
::Open the second program