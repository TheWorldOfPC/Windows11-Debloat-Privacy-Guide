@echo off

::Made by TheWorldOfPC (https://youtube.com/TheWorldOfPC)

echo Disabling Delivery Optimization...
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\DoSvc" /v "Start" /t REG_DWORD /d 4 /f

echo Disabling Storage Service...
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\StorSvc" /v "Start" /t REG_DWORD /d 4 /f

echo Disabling Update Orchestrator Service...
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\UsoSvc" /v "Start" /t REG_DWORD /d 4 /f

echo Disabling Web Account Manager...
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\TokenBroker" /v "Start" /t REG_DWORD /d 4 /f

echo Disabling Windows License Manager Service...
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\LicenseManager" /v "Start" /t REG_DWORD /d 4 /f
cls

echo RESTART YOUR PC TO LET THE CHANGES TAKE PLACE
pause


