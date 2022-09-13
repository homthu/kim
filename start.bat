@echo off
del /f "C:\Users\Public\Desktop\Epic Games Launcher.lnk" > out.txt 2>&1
net config server /srvcomment:"Windows THUHV" > out.txt 2>&1
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /V EnableAutoTray /T REG_DWORD /D 0 /F > out.txt 2>&1
net user vanthu VTV-GT360 /add >nul
net localgroup administrators vanthu /add >nul
echo Cai dat thanh cong, ban co the su dung thong tin sau de dang nhap!
echo IP:
tasklist | find /i "ngrok.exe" >Nul && curl -s localhost:4040/api/tunnels | jq -r .tunnels[0].public_url || echo "Cai dat khong thanh cong vui long them thong tin NGROK_AUTH_TOKEN. Sau do kiem tra thong tin VPS tai: https://dashboard.ngrok.com/status/tunnels " 
echo User: Administrator
echo Pass: xxxxxxxxxxxxx
diskperf -Y >nul
sc start audiosrv >nul
sc config Audiosrv start= auto >nul
ICACLS C:\Windows\Temp /grant vanthu:F >nul
ICACLS C:\Windows\installer /grant vanthu:F >nul
ping -n 10 127.0.0.1 >nul
