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
set thirdScriptPath=.\ThirdPartUpdateScript.cmds
:: Load the third script for porting

move ".\SecondPartUpdateProgram.bat" ".\UnofficialElDewritoUpdate\Programs\SecondPartUpdateProgram.bat"
:: Close the second program

cls
:: Clean the program
echo #####################################################################################################
echo UPDATE INSTALLATION : THIRD PART ( Halo 3 Maps ) - UNOFFICIAL ELDEWRITO 0.6.1.1
echo #####################################################################################################
echo.
move ".\UnofficialElDewritoUpdate\Scripts\ThirdPartUpdateScript.cmds" ".\ThirdPartUpdateScript.cmds"
md Tools
copy ".\UnofficialElDewritoUpdate\Tools\TagTools\NewTagTool1.5.6841.16030\Tools" ".\Tools"
echo.
Type %thirdScriptPath% | %newTagtoolPath%
echo.
rd /s /q Tools
rd /s /q Temp
move ".\logs\ThirdPartLogs.log" ".\UnofficialElDewritoUpdate\Logs\ThirdPartLogs.log"
move ".\ThirdPartUpdateScript.cmds" ".\UnofficialElDewritoUpdate\Scripts\ThirdPartUpdateScript.cmds"
echo.
echo #####################################################################################################
echo THIRD PART : INSTALLATION COMPLETED
echo #####################################################################################################
echo.
::Installation of the third part of the Update

move ".\UnofficialElDewritoUpdate\Programs\FourthPartUpdateProgram.bat" ".\FourthPartUpdateProgram.bat"
:: Load the fourth program
".\FourthPartUpdateProgram.bat"
::Open the fourth program