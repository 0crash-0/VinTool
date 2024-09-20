@echo off
chcp 65001 >nul
cd VinTools_files

title VINTOOL - By 0crash
color 02

:banner
echo.
echo                               ██╗   ██╗██╗███╗   ██╗████████╗ ██████╗  █████   ██     
echo                               ██║   ██║██║████╗  ██║╚══██╔══╝██╔═══██╗██    █  ██     
echo                               ██║   ██║██║██╔██╗ ██║   ██║   ██║   ██║██║   ██║██     
echo                               ╚██╗ ██╔╝██║██║╚██╗██║   ██║   ██║   ██║██║   ██║██     
echo                                ╚████╔╝ ██║██║ ╚████║   ██║   ╚██████╔╝╚██████╔╝███████╗
echo                                 ╚═══╝  ╚═╝╚═╝  ╚═══╝   ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝
pause

:menu
echo.
echo 1) Nmap
echo 2) RogueKiller
echo 3) CyberChef
echo 4) F-Secure
echo 5) GlassWire
echo 6) Hashcat
echo 7) Wireshark
echo 8) Exit

choice /c 12345678 /n /m "Select an option:"
if errorlevel 8 goto :exit
if errorlevel 7 start "" "C:\Path\To\Wireshark\wireshark.exe" & goto :menu
if errorlevel 6 start "" "C:\Path\To\Hashcat\hashcat.exe" & goto :menu
if errorlevel 5 start "" "C:\Path\To\GlassWire\glasswire.exe" & goto :menu
if errorlevel 4 start "" "C:\Path\To\F-Secure\F-Secure.exe" & goto :menu
if errorlevel 3 start "" "C:\Path\To\CyberChef\cyberchef.exe" & goto :menu
if errorlevel 2 start "" "C:\Path\To\RogueKiller\RogueKiller.exe" & goto :menu
if errorlevel 1 start "" "C:\Path\To\Nmap\nmap.exe" & goto :menu

:exit
echo Shutting down . . .
timeout /t 2 /nobreak >nul
exit
