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
set hoMS30TagsPath=.\ElDewritoUpdate\Datas\HaloOnlineMS30Tags\tags.dat
:: Load Halo Online ms30 Tags for porting
set newTagtoolPath=.\ElDewritoUpdate\Tools\TagTools\NewTagTool1.5.6841.16030\TagTool.exe
:: Load Halo Online New TagTool for porting
set secondScriptPath=.\SecondPartUpdateScript.cmds
:: Load the fourth script for porting

move ".\FirstPartUpdateProgram.bat" ".\ElDewritoUpdate\Programs\FirstPartUpdateProgram.bat"
:: Close the first program

cls
:: Clean the program
echo #####################################################################################################
echo UPDATE INSTALLATION : SECOND PART ( ms30 Maps Patches ) ; ELDEWRITO 0.6.1.1
echo #####################################################################################################
echo.
move ".\ElDewritoUpdate\Scripts\SecondPartUpdateScript.cmds" ".\SecondPartUpdateScript.cmds"
echo.
Type %secondScriptPath% | %newTagtoolPath% %hoMS30TagsPath%
echo.
move ".\tag_list.csv" ".\ElDewritoUpdate\Datas\HaloOnlineMS30Tags\tag_list.csv"
move ".\output.csv" ".\ElDewritoUpdate\Datas\HaloOnlineMS30Tags\output.csv"
move ".\logs\SecondPartLogs.log" ".\ElDewritoUpdate\Logs\SecondPartLogs.log"
move ".\SecondPartUpdateScript.cmds" ".\ElDewritoUpdate\Scripts\SecondPartUpdateScript.cmds"
echo.
echo #####################################################################################################
echo SECOND PART : INSTALLATION COMPLETED
echo #####################################################################################################
echo.
::Installation of the second part of the Update

move ".\ElDewritoUpdate\Programs\ThirdPartUpdateProgram.bat" ".\ThirdPartUpdateProgram.bat"
:: Load the third program
".\ThirdPartUpdateProgram.bat"
::Open the third program