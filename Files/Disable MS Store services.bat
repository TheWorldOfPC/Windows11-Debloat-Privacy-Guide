@echo off

::Made by TheWorldOfPC (https://youtube.com/TheWorldOfPC)

echo enabling Delivery Optimization...
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\DoSvc" /v "Start" /t REG_DWORD /d 4 /f

echo enabling Storage Service...
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\StorSvc" /v "Start" /t REG_DWORD /d 4 /f

echo enabling Update Orchestrator Service...
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\UsoSvc" /v "Start" /t REG_DWORD /d 4 /f

echo enabling Web Account Manager...
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\TokenBroker" /v "Start" /t REG_DWORD /d 4 /f

echo enabling Windows License Manager Service...
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\LicenseManager" /v "Start" /t REG_DWORD /d 4 /f
cls

echo RESTART YOUR PC TO LET THE CHANGES TAKE PLACE
pause


