# Windows11 Debloater

[#IMPORTANT](#Important)

This guide is meant for advanced users who wants to get rid off Windows 11's bloatware and telemetry, if you have no experience of such thing you can consider this guide for ease. <br>
<br>
**Note : You're doing this at your own risk, I am not responsible for any data loss or damage that may occur.**
<br>
Last tested on Windows 11 Insider Build : 22000.160

## Credits 

This guide is based on Adolf Intel's Windows 10 Privacy Guide with many modifications to make it working on Windows 11 <br>
Thanks to PPGSource 502#3112 from my discord server for stripping Windows 11 to barebones <br>
Made by The World Of PC#0077 <br>

### Pros

Get rid of bloatware <br>
Disable most of the telemetry <br>
Gain performance <br>
Optimize Windows 11 for gaming as well as productivity <br>
Strip Windows 11 to barebones (In Advanced removal below) <br>

### Cons

Breaks Sysprep <br>
Removing Windows Defender breaks updatability <br>
Won't be able to use sfc/scannow command

## Pre-Requisite

NTFS Access <br>
Install_Wim_Tweak.exe <br>
DISM++ (Optional but recommended) <br>

## Debloating Windows 11 (Just The Bloatwares)

### Before you debloat!

Copy and paste the "install_wim_tweak.exe" to C:\Windows\System32 <br>
Open NTFS Access and browse to C:\Program Files\WindowsApps\ and take ownership of that directory and sub dirs

Before debloating if you have recently updated your copy of Windows 11 or just fresh installed it, I would recommend you to cleanup the component store with /resetbase command or use DISM++ for ease, it clears the temp files with update leftovers in WinSxS. <br>
**Note : If DISM++ gives error while cleaning up the component store use this command (Command Prompt as Admin Obviously)**

```
DISM /Online /Cleanup-Image /StartComponentCleanup /ResetBase
```
After the cleanup is done you can start debloating Windows 11.


### Microsoft Store 
In the PowerShell, type: <br>
```
Get-AppxPackage -AllUsers *store* | Remove-AppxPackage
```
You can ignore any error that pops up.<br>

In Command Prompt, type: <br>
```
install_wim_tweak /o /c Microsoft-Windows-ContentDeliveryManager /r
install_wim_tweak /o /c Microsoft-Windows-Store /r
```

### Removing Services (Not Recommended if you are going to use any UWP app)

In Command Prompt, type: <br>
```
reg add "HKLM\Software\Policies\Microsoft\WindowsStore" /v RemoveWindowsStore /t REG_DWORD /d 1 /f
reg add "HKLM\Software\Policies\Microsoft\WindowsStore" /v DisableStoreApps /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\AppHost" /v "EnableWebContentEvaluation" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\PushToInstall" /v DisablePushToInstall /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SilentInstalledAppsEnabled /t REG_DWORD /d 0 /f
sc delete PushToInstall
```

Now go to C:\Program Files\WindowsApps <br>
Now delete (shift + delete) the folder named ""

### Music, TV
In the PowerShell, type: <br>
```
Get-AppxPackage -AllUsers *zune* | Remove-AppxPackage
Get-WindowsPackage -Online | Where PackageName -like *MediaPlayer* | Remove-WindowsPackage -Online -NoRestart
```
Now go to C:\Program Files\WindowsApps <br>
Now delete (shift + delete) the folder named ""

### Xbox and Game DVR
In the PowerShell, type: <br>
```
Get-AppxPackage -AllUsers *xbox* | Remove-AppxPackage
```

### Removing Services (Not Recommended if you are going to use it in future)
In Command Prompt, type: <br>
```
sc delete XblAuthManager
sc delete XblGameSave
sc delete XboxNetApiSvc
sc delete XboxGipSvc
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\xbgm" /f
schtasks /Change /TN "Microsoft\XblGameSave\XblGameSaveTask" /disable
schtasks /Change /TN "Microsoft\XblGameSave\XblGameSaveTaskLogon" /disable
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\GameDVR" /v AllowGameDVR /t REG_DWORD /d 0 /f
```

Now go to C:\Program Files\WindowsApps <br>
Now delete (shift + delete) the folder named ""

### Sticky Notes
In the PowerShell, type: <br>
```
Get-AppxPackage -AllUsers *sticky* | Remove-AppxPackage
```

Now go to C:\Program Files\WindowsApps <br>
Now delete (shift + delete) the folder named ""

### Maps
In the PowerShell, type: <br>
```
Get-AppxPackage -AllUsers *maps* | Remove-AppxPackage
```

### Removing Services
In Command Prompt, type: <br>
```
sc delete MapsBroker
sc delete lfsvc
schtasks /Change /TN "\Microsoft\Windows\Maps\MapsUpdateTask" /disable
schtasks /Change /TN "\Microsoft\Windows\Maps\MapsToastTask" /disable
```

Now go to C:\Program Files\WindowsApps <br>
Now delete (shift + delete) the folder named ""

### Alarms and Clock
```
Get-AppxPackage -AllUsers *alarms* | Remove-AppxPackage
Get-AppxPackage -AllUsers *people* | Remove-AppxPackage
```
You can ignore any error that pops up.

### Mail, Calendar, ...
In the PowerShell, type:
```
Get-AppxPackage -AllUsers *comm* | Remove-AppxPackage
Get-AppxPackage -AllUsers *mess* | Remove-AppxPackage
```

### OneNote
In the PowerShell, type:
```
Get-AppxPackage -AllUsers *onenote* | Remove-AppxPackage
```

### Photos
In the PowerShell, type:
```
Get-AppxPackage -AllUsers *photo* | Remove-AppxPackage
```
Enable Classic Photoviewer using [WinAeroTweaker](https://winaero.com/download-winaero-tweaker/)

### Camera
In the PowerShell, type:
```
Get-AppxPackage -AllUsers *camera* | Remove-AppxPackage
````
Ignore any error that pops up

### Weather, News, ...
In the PowerShell, type:
```
Get-AppxPackage -AllUsers *bing* | Remove-AppxPackage
```

### Calculator
In the PowerShell, type:
```
Get-AppxPackage -AllUsers *calc* | Remove-AppxPackage
```
Download Classic Calulator from [Here](https://winaero.com/get-calculator-from-windows-8-and-windows-7-in-windows-10/)

### Sound Recorder
In the PowerShell, type:
```
Get-AppxPackage -AllUsers *soundrec* | Remove-AppxPackage
```
Alternatives [Audacity](http://www.audacityteam.org/)

### Microsoft Edge (Chromium)

Go to `C:\Program Files (x86)\Microsoft\Edge\Application\%your_version%\Installer\` <br>
Now open powershell as Administrator and type: <br>
```
.\setup.exe -uninstall -system-level -verbose-logging -force-uninstall
```
Microsoft Edge is now uninstalled but you still can see a broken icon on start menu to get rid off it open command prompt and type: <br>
```
install_wim_tweak.exe /o /l
install_wim_tweak.exe /o /c "Microsoft-Windows-Internet-Browser-Package" /r
install_wim_tweak.exe /h /o /l
```
Restart is required after this (you can restart later when you are done debloating everything)

### Contact Support, Get Help
In the command prompt, type:
```
install_wim_tweak /o /c Microsoft-Windows-ContactSupport /r
```

In Powershell, type:
```
Get-AppxPackage -AllUsers *GetHelp* | Remove-AppxPackage
```

### Microsoft Quick Assist
In the PowerShell, type:
```
Get-WindowsPackage -Online | Where PackageName -like *QuickAssist* | Remove-WindowsPackage -Online -NoRestart
```

### Connect
In the command prompt, type:
```
install_wim_tweak /o /c Microsoft-PPIProjection-Package /r
```

### Your Phone
In the PowerShell, type:
```
Get-AppxPackage -AllUsers *phone* | Remove-AppxPackage
```

### Hello Face
In the PowerShell, type:
```
Get-WindowsPackage -Online | Where PackageName -like *Hello-Face* | Remove-WindowsPackage -Online -NoRestart
```

In the command prompt, type:
```
schtasks /Change /TN "\Microsoft\Windows\HelloFace\FODCleanupTask" /Disable
```

## You Have Successfully Debloated Windows 11!

## Basic Tweaking

### Edit with 3D Paint / 3D Print
It is now possible to remove 3D Paint and 3D Print, but they forgot to remove the option in the context menu when you remove them. To remove it, run this in the command prompt:
```
for /f "tokens=1* delims=" %I in (' reg query "HKEY_CLASSES_ROOT\SystemFileAssociations" /s /k /f "3D Edit" ^| find /i "3D Edit" ') do (reg delete "%I" /f )
for /f "tokens=1* delims=" %I in (' reg query "HKEY_CLASSES_ROOT\SystemFileAssociations" /s /k /f "3D Print" ^| find /i "3D Print" ') do (reg delete "%I" /f )
```



[!["Buy Me A Coffee"](https://cdn.discordapp.com/attachments/837916532003962910/880500524934369352/BMC.png)](https://www.buymeacoffee.com/TheWorldOfPC)
