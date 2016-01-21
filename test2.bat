@echo off

set LOG_PATH=c:\\Temp
set count=0

for %%x in (%LOG_PATH%\mms-gui-user*) do set /a count+=1

echo %count%

rename %LOG_PATH%\mms-gui-user.log mms-gui-user.log.%count% 
