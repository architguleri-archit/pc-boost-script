@echo off
color 0A
echo Optimizing system...

echo Cleaning user temp files...
del /q /f /s %temp%\* 2>nul

echo Cleaning Windows temp files...
del /q /f /s C:\Windows\Temp\* 2>nul

echo Flushing DNS cache...
ipconfig /flushdns

echo Running disk cleanup...
cleanmgr /sagerun:1

echo Optimization Complete!
pause