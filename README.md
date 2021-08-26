# Windows11 Debloater

## IMPORTANT

This guide is meant for advanced users who wants to get rid off Windows 11's bloatware and telemetry, if you have no experience of such thing you can consider this guide for ease. <br>
<br>
**Note : You're doing this at your own risk, I am not responsible for any data loss or damage that may occur.**
<br>
Last tested on Windows 11 Insider Build : 22000.160

### Pros

Get rid of bloatware <br>
Disable most of the telemetry <br>
Gain performance <br>
Optimize Windows 11 for gaming as well as productivity <br>
Strip Windows 11 to barebones (In Advanced removal below) <br>

### Cons

Breaks Sysprep <br>
Removing Windows Defender breaks updatability <br>

## Debloating Windows 11 (Just The Bloatwares)

### Microsoft Store 
In the PowerShell, type: <br>
```Get-AppxPackage -AllUsers *store* | Remove-AppxPackage```
