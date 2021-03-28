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
set hoMS23TagsPath=.\UnofficialElDewritoUpdate\Datas\HaloOnlineMS23Tags\tags.dat
:: Load Halo Online ms23 Tags for porting
set newTagtoolPath=.\UnofficialElDewritoUpdate\Tools\TagTools\NewTagTool1.5.6841.16030\TagTool.exe
:: Load Halo Online New TagTool for porting
set fourthScriptPath=.\FourthPartUpdateScript.cmds
:: Load the fourth script for porting

move ".\ThirdPartUpdateProgram.bat" ".\UnofficialElDewritoUpdate\Programs\ThirdPartUpdateProgram.bat"
:: Close the third program

cls
:: Clean the program
echo.
echo #####################################################################################################
echo UPDATE INSTALLATION : FOURTH PART ( ms23 Tags ) - UNOFFICIAL ELDEWRITO 0.6.1.1
echo #####################################################################################################
echo.
move ".\UnofficialElDewritoUpdate\Scripts\FourthPartUpdateScript.cmds" ".\FourthPartUpdateScript.cmds"
echo.
Type %fourthScriptPath% | %newTagtoolPath% %hoMS23TagsPath%
echo.
move ".\tag_list.csv" ".\UnofficialElDewritoUpdate\Datas\HaloOnlineMS23Tags\tag_list.csv"
move ".\output.csv" ".\UnofficialElDewritoUpdate\Datas\HaloOnlineMS23Tags\output.csv"
move ".\logs\FourthPartLogs.log" ".\UnofficialElDewritoUpdate\Logs\FourthPartLogs.log"
move ".\FourthPartUpdateScript.cmds" ".\UnofficialElDewritoUpdate\Scripts\FourthPartUpdateScript.cmds"
echo.
echo #####################################################################################################
echo FOURTH PART : INSTALLATION COMPLETED
echo #####################################################################################################
echo.
::Installation of the fourth part of the Update

move ".\UnofficialElDewritoUpdate\Programs\FifthPartUpdateProgram.bat" ".\FifthPartUpdateProgram.bat"
:: Load the fifth program
".\FifthPartUpdateProgram.bat"
::Open the fifth program