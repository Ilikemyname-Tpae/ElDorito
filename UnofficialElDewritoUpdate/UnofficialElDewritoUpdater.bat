@echo off
:: Hide script commands
color F1
:: Make the program color as blue
title ElDewrito 0.6.1.1 Updater
:: Create a program title
cls
:: Clean the program
echo ###################################
echo ELDEWRITO 0.6.1.1 UPDATE
echo Made By Vaktor (Discord Vaktor#8838)
echo ###################################
echo.
:: Write the Description

goto UpdateInstallationConfirmation
:: Confirm the installation of the Update

:UpdateInstallationConfirmation
	:: Create a function to confirm the installation of the Update
	set /p installationConfirmation=Update ElDewrito to 0.6.1.1 Type Y (for Yes) or N (for No) : 
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
	echo UPDATE INSTALLATION : ElDewrito 0.6.1.1 Update Files ; ELDEWRITO 0.6.1.1
	echo #####################################################################################################
	echo.
	copy ".\ElDewritoUpdate\Datas\ElDewrito0.6.1.1Files\custom_menu.exe" ".\custom_menu.exe"
	copy ".\ElDewritoUpdate\Datas\ElDewrito0.6.1.1Files\mtndew.dll" ".\mtndew.dll"
	copy ".\ElDewritoUpdate\Datas\ElDewrito0.6.1.1Files\armorChest" ".\mods\ui\web\assets\armor\armorChest"
	copy ".\ElDewritoUpdate\Datas\ElDewrito0.6.1.1Files\armorHelmet" ".\mods\ui\web\assets\armor\armorHelmet"
	copy ".\ElDewritoUpdate\Datas\ElDewrito0.6.1.1Files\armorLeftShoulder" ".\mods\ui\web\assets\armor\armorLeftShoulder"
	copy ".\ElDewritoUpdate\Datas\ElDewrito0.6.1.1Files\armorRightShoulder" ".\mods\ui\web\assets\armor\armorRightShoulder"
	copy ".\ElDewritoUpdate\Datas\ElDewrito0.6.1.1Files\profile_settings\customization.js" ".\mods\ui\web\screens\profile_settings\customization.js"
	copy ".\ElDewritoUpdate\Datas\ElDewrito0.6.1.1Files\profile_settings\index.html" ".\mods\ui\web\screens\profile_settings\index.html"
	copy ".\ElDewritoUpdate\Datas\ElDewrito0.6.1.1Files\items.xml" ".\mods\ui\web\screens\forge\object_creation\items.xml"
	copy ".\ElDewritoUpdate\Datas\ElDewrito0.6.1.1Files\supported_weapons.json" ".\mods\weapons\supported_weapons.json"
	copy ".\ElDewritoUpdate\Datas\ElDewrito0.6.1.1Files\120FOV_Centered.json" ".\mods\weapons\offsets\120FOV_Centered.json"
	copy ".\ElDewritoUpdate\Datas\ElDewrito0.6.1.1Files\CenteredCrosshair.json" ".\mods\weapons\offsets\CenteredCrosshair.json"
	copy ".\ElDewritoUpdate\Datas\ElDewrito0.6.1.1Files\H2A.json" ".\mods\weapons\offsets\H2A.json"
	copy ".\ElDewritoUpdate\Datas\ElDewrito0.6.1.1Files\H390FOV.json" ".\mods\weapons\offsets\H390FOV.json"
	copy ".\ElDewritoUpdate\Datas\ElDewrito0.6.1.1Files\Halo3ViewModels.json" ".\mods\weapons\offsets\Halo3ViewModels.json"
	copy ".\ElDewritoUpdate\Datas\ElDewrito0.6.1.1Files\title\index.html" ".\mods\ui\web\screens\title\index.html"
	copy ".\ElDewritoUpdate\Datas\ElDewrito0.6.1.1Files\title\title.js" ".\mods\ui\web\screens\title\title.js"
	echo.
	echo #####################################################################################################
	echo INSTALLATION COMPLETED
	echo #####################################################################################################
	echo.
	::Installation of the Update
	
	move ".\ElDewritoUpdate\Programs\FirstPartUpdateProgram.bat" ".\FirstPartUpdateProgram.bat"
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