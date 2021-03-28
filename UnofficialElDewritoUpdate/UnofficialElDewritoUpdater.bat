@echo off
:: Hide script commands
color F1
:: Make the program color as blue
title Unofficial ElDewrito 0.6.1.1 Updater
:: Create a program title
cls
:: Clean the program
echo ###################################
echo UNOFFICIAL ELDEWRITO 0.6.1.1 UPDATE
echo Made By Vaktor (Discord Vaktor#6484)
echo ###################################
echo.
:: Write the Description

goto UpdateInstallationConfirmation
:: Confirm the installation of the Update

:UpdateInstallationConfirmation
	:: Create a function to confirm the installation of the Update
	set /p installationConfirmation = Update ElDewrito 0.6.1.0 to Unofficial ElDewrito 0.6.1.1 : Type Y (for Yes) or N (for No) : 
	if /i "%installationConfirmation%" EQU "Y" goto PROGRAM
	if /i "%installationConfirmation%" EQU "N" (
	echo.
	echo #####################################################################################################
	goto Exit )
	:: The installation has been canceled
	goto UpdateInstallationConfirmation
	:: To block any error in the function

:PROGRAM
	::Start the Update program
	cls
	:: Clean the program
	echo #####################################################################################################
	echo UPDATE INSTALLATION : Unofficial ElDewrito 0.6.1.1 Update Files - UNOFFICIAL ELDEWRITO 0.6.1.1
	echo #####################################################################################################
	echo.
	copy ".\UnofficialElDewritoUpdate\Data\UnofficialElDewrito0.6.1.1Files\" ".\"
	echo.
	echo #####################################################################################################
	echo INSTALLATION COMPLETED
	echo #####################################################################################################
	echo.
	::Installation of the Update
	
	move ".\UnofficialElDewritoUpdate\Programs\FirstPartUpdateProgram.bat" ".\FirstPartUpdateProgram.bat"
	:: Load the first program
	".\FirstPartUpdateProgram.bat"
	::Open the first program

:Exit
	:: Create an exit function
	echo PROGRAM SHUT DOWN
	echo #####################################################################################################
	pause
	cls
	:: Clean the program
	exit
	:: Shut down the program