@echo off
Title Windows 11 Debloater by WPC
mode con: cols=155 lines=36
color 03

:Start
cls
echo.
echo.
echo     /$$      /$$ /$$                   /$$     /$$         /$$$$$$$            /$$       /$$                       /$$                        
echo    ^| $$  /$ ^| $$^|__/                 /$$$$   /$$$$        ^| $$__  $$          ^| $$      ^| $$                      ^| $$                        
echo    ^| $$ /$$$^| $$ /$$ /$$$$$$$       ^|_  $$  ^|_  $$        ^| $$  \ $$  /$$$$$$ ^| $$$$$$$ ^| $$  /$$$$$$   /$$$$$$  /$$$$$$    /$$$$$$   /$$$$$$ 
echo    ^| $$/$$ $$ $$^| $$^| $$__  $$        ^| $$    ^| $$        ^| $$  ^| $$ /$$__  $$^| $$__  $$^| $$ /$$__  $$ ^|____  $$^|_  $$_/   /$$__  $$ /$$__  $$
echo    ^| $$$$_  $$$$^| $$^| $$  \ $$        ^| $$    ^| $$        ^| $$  ^| $$^| $$$$$$$$^| $$  \ $$^| $$^| $$  \ $$  /$$$$$$$  ^| $$    ^| $$$$$$$$^| $$  \__/
echo    ^| $$$/ \  $$$^| $$^| $$  ^| $$        ^| $$    ^| $$        ^| $$  ^| $$^| $$_____/^| $$  ^| $$^| $$^| $$  ^| $$ /$$__  $$  ^| $$ /$$^| $$_____/^| $$      
echo    ^| $$/   \  $$^| $$^| $$  ^| $$       /$$$$$$ /$$$$$$      ^| $$$$$$$/^|  $$$$$$$^| $$$$$$$/^| $$^|  $$$$$$/^|  $$$$$$$  ^|  $$$$/^|  $$$$$$$^| $$      
echo    ^|__/     \__/^|__/^|__/  ^|__/      ^|______/^|______/      ^|_______/  \_______/^|_______/ ^|__/ \______/  \_______/   \___/   \_______/^|__/      
echo.                                                                                                                                                           
echo.                                                                                                                                                           
echo  _____________________________________________________________________________________________________________________________________________________ 
echo. 
echo  #  Windows Defender and Windows Updates aren't affected by this tool, in order to remove them please check out the GitHub Repo  (Press 0 to visit)  #
echo  -----------------------------------------------------------------------------------------------------------------------------------------------------
echo  #  NEED HELP? JOIN MY DISCORD SERVER :- https://discord.gg/WtmzZ4EEjt                      SUBSCRIBE FOR MORE! :- https://youtube.com/TheWorldOfPC  #
echo  _____________________________________________________________________________________________________________________________________________________
echo.
echo.
echo  [1] ^| Debloat Everything
echo  [2] ^| Debloat Everything Except Microsoft Store ^& Xbox
echo.
echo.
echo.
set /p op=  Your Option:
if %op%==1 goto Op1
if %op%==2 goto Op2
if %op%==0 goto Op3
goto Input

:Op1
cls
echo.
echo.
echo     /$$      /$$ /$$                   /$$     /$$         /$$$$$$$            /$$       /$$                       /$$                        
echo    ^| $$  /$ ^| $$^|__/                 /$$$$   /$$$$        ^| $$__  $$          ^| $$      ^| $$                      ^| $$                        
echo    ^| $$ /$$$^| $$ /$$ /$$$$$$$       ^|_  $$  ^|_  $$        ^| $$  \ $$  /$$$$$$ ^| $$$$$$$ ^| $$  /$$$$$$   /$$$$$$  /$$$$$$    /$$$$$$   /$$$$$$ 
echo    ^| $$/$$ $$ $$^| $$^| $$__  $$        ^| $$    ^| $$        ^| $$  ^| $$ /$$__  $$^| $$__  $$^| $$ /$$__  $$ ^|____  $$^|_  $$_/   /$$__  $$ /$$__  $$
echo    ^| $$$$_  $$$$^| $$^| $$  \ $$        ^| $$    ^| $$        ^| $$  ^| $$^| $$$$$$$$^| $$  \ $$^| $$^| $$  \ $$  /$$$$$$$  ^| $$    ^| $$$$$$$$^| $$  \__/
echo    ^| $$$/ \  $$$^| $$^| $$  ^| $$        ^| $$    ^| $$        ^| $$  ^| $$^| $$_____/^| $$  ^| $$^| $$^| $$  ^| $$ /$$__  $$  ^| $$ /$$^| $$_____/^| $$      
echo    ^| $$/   \  $$^| $$^| $$  ^| $$       /$$$$$$ /$$$$$$      ^| $$$$$$$/^|  $$$$$$$^| $$$$$$$/^| $$^|  $$$$$$/^|  $$$$$$$  ^|  $$$$/^|  $$$$$$$^| $$      
echo    ^|__/     \__/^|__/^|__/  ^|__/      ^|______/^|______/      ^|_______/  \_______/^|_______/ ^|__/ \______/  \_______/   \___/   \_______/^|__/      
echo.                                                                                                                                                           
echo.                                                                                                                                                           
echo  _____________________________________________________________________________________________________________________________________________________                                                                                                                                                        
echo. 
powershell -command "Get-AppxPackage -allusers Microsoft.549981C3F5F10 | Remove-AppxPackage"
powershell -command "Get-AppxPackage -AllUsers *store* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *Microsoft.YourPhone* | Remove-AppxPackage"
cd %PROGRAMFILES(X86)%\Microsoft\Edge\Application\9*\Installer && setup --uninstall --force-uninstall --system-level
C:\Windows\install_wim_tweak.exe /o /c Microsoft-Windows-ContentDeliveryManager /r
C:\Windows\install_wim_tweak.exe /o /c Microsoft-Windows-Store /r
C:\Windows\install_wim_tweak.exe /o /l
C:\Windows\install_wim_tweak.exe /o /c "Microsoft-Windows-Internet-Browser-Package" /r
C:\Windows\install_wim_tweak.exe /h /o /l
powershell -command "Get-AppxPackage -AllUsers *zune* | Remove-AppxPackage"
powershell -command "Get-WindowsPackage -Online | Where PackageName -like *MediaPlayer* | Remove-WindowsPackage -Online -NoRestart"
powershell -command "Get-AppxPackage -AllUsers *xbox* | Remove-AppxPackage"
powershell -command "Get-AppxPackage -AllUsers *sticky* | Remove-AppxPackage"
powershell -command "Get-AppxPackage -AllUsers *maps* | Remove-AppxPackage"
schtasks /Change /TN "\Microsoft\Windows\Maps\MapsUpdateTask" /disable
schtasks /Change /TN "\Microsoft\Windows\Maps\MapsToastTask" /disable
powershell -command "Get-AppxPackage -AllUsers *alarms* | Remove-AppxPackage"
powershell -command "Get-AppxPackage -AllUsers *people* | Remove-AppxPackage"
powershell -command "Get-AppxPackage -AllUsers *comm* | Remove-AppxPackage"
powershell -command "Get-AppxPackage -AllUsers *mess* | Remove-AppxPackage"
powershell -command "Get-AppxPackage -AllUsers *onenote* | Remove-AppxPackage"
powershell -command "Get-AppxPackage -AllUsers *photo* | Remove-AppxPackage"
powershell -command "Get-AppxPackage -AllUsers *camera* | Remove-AppxPackage"
powershell -command "Get-AppxPackage -AllUsers *bing* | Remove-AppxPackage"
powershell -command "Get-AppxPackage -AllUsers *calc* | Remove-AppxPackage"
powershell -command "Get-AppxPackage -AllUsers *soundrec* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *Microsoft.Getstarted* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *Microsoft.WindowsFeedbackHub* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *Microsoft.3DBuilder* | Remove-AppxPackage"
C:\Windows\install_wim_tweak.exe /o /c Microsoft-Windows-ContactSupport /r
powershell -command "Get-AppxPackage -AllUsers *GetHelp* | Remove-AppxPackage"
powershell -command "Get-WindowsPackage -Online | Where PackageName -like *QuickAssist* | Remove-WindowsPackage -Online -NoRestart"
powershell -command "Get-AppxPackage -AllUsers *phone* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *Microsoft.Office.Sway* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *Microsoft.Office.Desktop* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *Microsoft.MicrosoftEdge.Stable* | Remove-AppxPackage"
C:\Windows\install_wim_tweak.exe /o /c Microsoft-PPIProjection-Package /r
powershell -command "Get-WindowsPackage -Online | Where PackageName -like *Hello-Face* | Remove-WindowsPackage -Online -NoRestart"
schtasks /Change /TN "\Microsoft\Windows\HelloFace\FODCleanupTask" /Disable
%SystemRoot%\SysWOW64\OneDriveSetup.exe /uninstall
rd "%UserProfile%\OneDrive" /s /q
rd "%LocalAppData%\Microsoft\OneDrive" /s /q
rd "%ProgramData%\Microsoft OneDrive" /s /q
rd "C:\OneDriveTemp" /s /q
del "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\OneDrive.lnk" /s /f /q
PowerShell -Command "Get-AppxPackage *Microsoft.MicrosoftSolitaireCollection* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *Microsoft.Wallet* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *Microsoft.MixedReality.Portal* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *Microsoft.MicrosoftOfficeHub* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *Microsoft.ScreenSketch* | Remove-AppxPackage"

goto done


:Op2
cls
echo.
echo.
echo     /$$      /$$ /$$                   /$$     /$$         /$$$$$$$            /$$       /$$                       /$$                        
echo    ^| $$  /$ ^| $$^|__/                 /$$$$   /$$$$        ^| $$__  $$          ^| $$      ^| $$                      ^| $$                        
echo    ^| $$ /$$$^| $$ /$$ /$$$$$$$       ^|_  $$  ^|_  $$        ^| $$  \ $$  /$$$$$$ ^| $$$$$$$ ^| $$  /$$$$$$   /$$$$$$  /$$$$$$    /$$$$$$   /$$$$$$ 
echo    ^| $$/$$ $$ $$^| $$^| $$__  $$        ^| $$    ^| $$        ^| $$  ^| $$ /$$__  $$^| $$__  $$^| $$ /$$__  $$ ^|____  $$^|_  $$_/   /$$__  $$ /$$__  $$
echo    ^| $$$$_  $$$$^| $$^| $$  \ $$        ^| $$    ^| $$        ^| $$  ^| $$^| $$$$$$$$^| $$  \ $$^| $$^| $$  \ $$  /$$$$$$$  ^| $$    ^| $$$$$$$$^| $$  \__/
echo    ^| $$$/ \  $$$^| $$^| $$  ^| $$        ^| $$    ^| $$        ^| $$  ^| $$^| $$_____/^| $$  ^| $$^| $$^| $$  ^| $$ /$$__  $$  ^| $$ /$$^| $$_____/^| $$      
echo    ^| $$/   \  $$^| $$^| $$  ^| $$       /$$$$$$ /$$$$$$      ^| $$$$$$$/^|  $$$$$$$^| $$$$$$$/^| $$^|  $$$$$$/^|  $$$$$$$  ^|  $$$$/^|  $$$$$$$^| $$      
echo    ^|__/     \__/^|__/^|__/  ^|__/      ^|______/^|______/      ^|_______/  \_______/^|_______/ ^|__/ \______/  \_______/   \___/   \_______/^|__/      
echo.                                                                                                                                                           
echo.                                                                                                                                                           
echo  _____________________________________________________________________________________________________________________________________________________                                                                                                                                                        
echo. 
powershell -command "Get-AppxPackage -allusers Microsoft.549981C3F5F10 | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *Microsoft.YourPhone* | Remove-AppxPackage"
cd %PROGRAMFILES(X86)%\Microsoft\Edge\Application\9*\Installer && setup --uninstall --force-uninstall --system-level
C:\Windows\install_wim_tweak.exe /o /l
C:\Windows\install_wim_tweak.exe /o /c "Microsoft-Windows-Internet-Browser-Package" /r
C:\Windows\install_wim_tweak.exe /h /o /l
powershell -command "Get-AppxPackage -AllUsers *zune* | Remove-AppxPackage"
powershell -command "Get-WindowsPackage -Online | Where PackageName -like *MediaPlayer* | Remove-WindowsPackage -Online -NoRestart"
powershell -command "Get-AppxPackage -AllUsers *sticky* | Remove-AppxPackage"
powershell -command "Get-AppxPackage -AllUsers *maps* | Remove-AppxPackage"
schtasks /Change /TN "\Microsoft\Windows\Maps\MapsUpdateTask" /disable
schtasks /Change /TN "\Microsoft\Windows\Maps\MapsToastTask" /disable
powershell -command "Get-AppxPackage -AllUsers *alarms* | Remove-AppxPackage"
powershell -command "Get-AppxPackage -AllUsers *people* | Remove-AppxPackage"
powershell -command "Get-AppxPackage -AllUsers *comm* | Remove-AppxPackage"
powershell -command "Get-AppxPackage -AllUsers *mess* | Remove-AppxPackage"
powershell -command "Get-AppxPackage -AllUsers *onenote* | Remove-AppxPackage"
powershell -command "Get-AppxPackage -AllUsers *photo* | Remove-AppxPackage"
powershell -command "Get-AppxPackage -AllUsers *camera* | Remove-AppxPackage"
powershell -command "Get-AppxPackage -AllUsers *bing* | Remove-AppxPackage"
powershell -command "Get-AppxPackage -AllUsers *calc* | Remove-AppxPackage"
powershell -command "Get-AppxPackage -AllUsers *soundrec* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *Microsoft.Getstarted* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *Microsoft.WindowsFeedbackHub* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *Microsoft.3DBuilder* | Remove-AppxPackage"
C:\Windows\install_wim_tweak.exe /o /c Microsoft-Windows-ContactSupport /r
powershell -command "Get-AppxPackage -AllUsers *GetHelp* | Remove-AppxPackage"
powershell -command "Get-WindowsPackage -Online | Where PackageName -like *QuickAssist* | Remove-WindowsPackage -Online -NoRestart"
powershell -command "Get-AppxPackage -AllUsers *phone* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *Microsoft.Office.Sway* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *Microsoft.Office.Desktop* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *Microsoft.MicrosoftEdge.Stable* | Remove-AppxPackage"
C:\Windows\install_wim_tweak.exe /o /c Microsoft-PPIProjection-Package /r
powershell -command "Get-WindowsPackage -Online | Where PackageName -like *Hello-Face* | Remove-WindowsPackage -Online -NoRestart"
schtasks /Change /TN "\Microsoft\Windows\HelloFace\FODCleanupTask" /Disable
%SystemRoot%\SysWOW64\OneDriveSetup.exe /uninstall
rd "%UserProfile%\OneDrive" /s /q
rd "%LocalAppData%\Microsoft\OneDrive" /s /q
rd "%ProgramData%\Microsoft OneDrive" /s /q
rd "C:\OneDriveTemp" /s /q
del "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\OneDrive.lnk" /s /f /q
PowerShell -Command "Get-AppxPackage *Microsoft.MicrosoftSolitaireCollection* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *Microsoft.Wallet* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *Microsoft.MixedReality.Portal* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *Microsoft.MicrosoftOfficeHub* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *Microsoft.ScreenSketch* | Remove-AppxPackage"

goto done

:done
cls
echo.
echo.
echo     /$$      /$$ /$$                   /$$     /$$         /$$$$$$$            /$$       /$$                       /$$                        
echo    ^| $$  /$ ^| $$^|__/                 /$$$$   /$$$$        ^| $$__  $$          ^| $$      ^| $$                      ^| $$                        
echo    ^| $$ /$$$^| $$ /$$ /$$$$$$$       ^|_  $$  ^|_  $$        ^| $$  \ $$  /$$$$$$ ^| $$$$$$$ ^| $$  /$$$$$$   /$$$$$$  /$$$$$$    /$$$$$$   /$$$$$$ 
echo    ^| $$/$$ $$ $$^| $$^| $$__  $$        ^| $$    ^| $$        ^| $$  ^| $$ /$$__  $$^| $$__  $$^| $$ /$$__  $$ ^|____  $$^|_  $$_/   /$$__  $$ /$$__  $$
echo    ^| $$$$_  $$$$^| $$^| $$  \ $$        ^| $$    ^| $$        ^| $$  ^| $$^| $$$$$$$$^| $$  \ $$^| $$^| $$  \ $$  /$$$$$$$  ^| $$    ^| $$$$$$$$^| $$  \__/
echo    ^| $$$/ \  $$$^| $$^| $$  ^| $$        ^| $$    ^| $$        ^| $$  ^| $$^| $$_____/^| $$  ^| $$^| $$^| $$  ^| $$ /$$__  $$  ^| $$ /$$^| $$_____/^| $$      
echo    ^| $$/   \  $$^| $$^| $$  ^| $$       /$$$$$$ /$$$$$$      ^| $$$$$$$/^|  $$$$$$$^| $$$$$$$/^| $$^|  $$$$$$/^|  $$$$$$$  ^|  $$$$/^|  $$$$$$$^| $$      
echo    ^|__/     \__/^|__/^|__/  ^|__/      ^|______/^|______/      ^|_______/  \_______/^|_______/ ^|__/ \______/  \_______/   \___/   \_______/^|__/      
echo.                                                                                                                                                           
echo.                                                                                                                                                           
echo  _____________________________________________________________________________________________________________________________________________________                                                                                                                                                         
echo. 
echo.
echo  ============================================================================================================
echo          REMOVED ALL BLOATWARE (RESTART REQUIRED! AFTER THAT CONTINUE FROM FINALIZING ^IN GITHUB REPO)
echo  ============================================================================================================
ping 127.0.0.1 >nul
goto Start

:Op3
cls
echo.
echo  ===============================
echo          Re-directing...
echo  ===============================
start "" https://github.com/TheWorldOfPC/Windows11-Debloat-Privacy-Guide
ping 127.0.0.1 >nul
goto Start

:input
cls
echo.
echo.
echo     /$$      /$$ /$$                   /$$     /$$         /$$$$$$$            /$$       /$$                       /$$                        
echo    ^| $$  /$ ^| $$^|__/                 /$$$$   /$$$$        ^| $$__  $$          ^| $$      ^| $$                      ^| $$                        
echo    ^| $$ /$$$^| $$ /$$ /$$$$$$$       ^|_  $$  ^|_  $$        ^| $$  \ $$  /$$$$$$ ^| $$$$$$$ ^| $$  /$$$$$$   /$$$$$$  /$$$$$$    /$$$$$$   /$$$$$$ 
echo    ^| $$/$$ $$ $$^| $$^| $$__  $$        ^| $$    ^| $$        ^| $$  ^| $$ /$$__  $$^| $$__  $$^| $$ /$$__  $$ ^|____  $$^|_  $$_/   /$$__  $$ /$$__  $$
echo    ^| $$$$_  $$$$^| $$^| $$  \ $$        ^| $$    ^| $$        ^| $$  ^| $$^| $$$$$$$$^| $$  \ $$^| $$^| $$  \ $$  /$$$$$$$  ^| $$    ^| $$$$$$$$^| $$  \__/
echo    ^| $$$/ \  $$$^| $$^| $$  ^| $$        ^| $$    ^| $$        ^| $$  ^| $$^| $$_____/^| $$  ^| $$^| $$^| $$  ^| $$ /$$__  $$  ^| $$ /$$^| $$_____/^| $$      
echo    ^| $$/   \  $$^| $$^| $$  ^| $$       /$$$$$$ /$$$$$$      ^| $$$$$$$/^|  $$$$$$$^| $$$$$$$/^| $$^|  $$$$$$/^|  $$$$$$$  ^|  $$$$/^|  $$$$$$$^| $$      
echo    ^|__/     \__/^|__/^|__/  ^|__/      ^|______/^|______/      ^|_______/  \_______/^|_______/ ^|__/ \______/  \_______/   \___/   \_______/^|__/      
echo.                                                                                                                                                           
echo.                                                                                                                                                           
echo  _____________________________________________________________________________________________________________________________________________________                                                                                                                                                      
echo. 
echo.
echo  ===================================================
echo  # INVALID OPTION PLEASE CHOOSE THE CORRECT OPTION #
echo  ===================================================
ping localhost -n 4 >nul
goto start
