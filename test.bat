@echo off

rem set "yourDir=D:\PRIV"

REM echo:List only files:
REM for %%a in ("%yourDir%\*") do echo %%~fa

REM echo:List only directories:
REM for /d %%a in ("%yourDir%\*") do echo %%~fa

REM echo:List directories and files in one command:
REM for /f "usebackq tokens=*" %%a in (`dir /b "%yourDir%\*"`) do echo %yourDir%\%%~a

set "filename=README.md"

set maxbytesize=0

for %%A in ("%filename%") do set size=%%~zA

echo "Size of %filename%:"
echo %size%

if %size% gtr %maxbytesize% (
	echo "Size is greater"
) else (
	echo "Size is lesser"
)

pause

