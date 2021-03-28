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
set hoMS30TagsPath=.\UnofficialElDewritoUpdate\Datas\HaloOnlineMS30Tags\tags.dat
:: Load Halo Online ms30 Tags for porting
set newTagtoolPath=.\UnofficialElDewritoUpdate\Tools\TagTools\NewTagTool1.5.6841.16030\TagTool.exe
:: Load Halo Online New TagTool for porting
set secondScriptPath=.\SecondPartUpdateScript.cmds
:: Load the fourth script for porting

move ".\FirstPartUpdateProgram.bat" ".\UnofficialElDewritoUpdate\Programs\FirstPartUpdateProgram.bat"
:: Close the first program

cls
:: Clean the program
echo #####################################################################################################
echo UPDATE INSTALLATION : SECOND PART ( ms30 Maps Patches ) - UNOFFICIAL ELDEWRITO 0.6.1.1
echo #####################################################################################################
echo.
move ".\UnofficialElDewritoUpdate\Scripts\SecondPartUpdateScript.cmds" ".\SecondPartUpdateScript.cmds"
echo.
Type %secondScriptPath% | %newTagtoolPath% %hoMS30TagsPath%
echo.
move ".\tag_list.csv" ".\UnofficialElDewritoUpdate\Datas\HaloOnlineMS30Tags\tag_list.csv"
move ".\output.csv" ".\UnofficialElDewritoUpdate\Datas\HaloOnlineMS30Tags\output.csv"
move ".\logs\SecondPartLogs.log" ".\UnofficialElDewritoUpdate\Logs\SecondPartLogs.log"
move ".\SecondPartUpdateScript.cmds" ".\UnofficialElDewritoUpdate\Scripts\SecondPartUpdateScript.cmds"
echo.
echo #####################################################################################################
echo SECOND PART : INSTALLATION COMPLETED
echo #####################################################################################################
echo.
::Installation of the second part of the Update

move ".\UnofficialElDewritoUpdate\Programs\ThirdPartUpdateProgram.bat" ".\ThirdPartUpdateProgram.bat"
:: Load the third program
".\ThirdPartUpdateProgram.bat"
::Open the third program