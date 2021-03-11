@echo off
set /p pass=pass
set /p file_name=file name
echo transferring file %file_name%
echo open files.000webhost.com>transfer.txt
echo nigatoni>>transfer.txt
echo %pass%>>transfer.txt
echo put %file_name% >>transfer.txt
echo bye>>transfer.txt
ftp -s:transfer.txt
del transfer.txt
echo done
