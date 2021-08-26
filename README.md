# Windows11 Debloater

## IMPORTANT

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

## Pre-Requisite

NTFS Access (Grants you the permission of a dir and sub dirs in just one click) <br>
Install_Wim_Tweak.exe <br>
DISM++ (Optional but recommended) <br>

## Debloating Windows 11 (Just The Bloatwares)

### Before you debloat!

Open NTFS Access and browse to C:\Program Files\WindowsApps\ and take ownership of that directory and sub dirs

Before debloating if you have recently updated your copy of Windows 11 or just fresh installed it, I would recommend you to cleanup the component store with /resetbase command or use DISM++ for ease, it clears the temp files with update leftovers in WinSxS. <br>
Note : If DISM++ gives error while cleaning up the component store use this command (Command Prompt as Admin Obviously)

```
DISM /Online /Cleanup-Image /StartComponentCleanup /ResetBase
```
After the cleanup is done you can start debloating Windows 11.


### Microsoft Store 
In the PowerShell, type: <br>
```
Get-AppxPackage -AllUsers *store* | Remove-AppxPackage
```
You can ignore any error that pops up.

Now go to C:\Program Files\WindowsApps <br>
Now delete (shift + delete) the folder named ""

### Music, TV
In the PowerShell, type: <br>
```
Get-AppxPackage -AllUsers *zune* | Remove-AppxPackage
Get-WindowsPackage -Online | Where PackageName -like *MediaPlayer* | Remove-WindowsPackage -Online -NoRestart
```
