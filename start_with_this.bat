@echo off
chcp 65001 >nul
cd VinTool_files

title VinTool Installer
color 02

echo Installing cybersecurity tools...

:: Install Nmap
if exist "Nmap\nmap-install.exe" (
    echo Installing Nmap...
    start /wait Nmap\nmap-install.exe /S
) else (
    echo Nmap installer not found!
)

:: Install RogueKiller
if exist "RogueKiller\RogueKiller-install.exe" (
    echo Installing RogueKiller...
    start /wait RogueKiller\RogueKiller-install.exe /S
) else (
    echo RogueKiller installer not found!
)

:: Install CyberChef (if it's in a standalone executable)
if exist "CyberChef\cyberchef-install.exe" (
    echo Installing CyberChef...
    start /wait CyberChef\cyberchef-install.exe /S
) else (
    echo CyberChef installer not found!
)

:: Install F-Secure
if exist "F-Secure\fsecure-install.exe" (
    echo Installing F-Secure...
    start /wait F-Secure\fsecure-install.exe /S
) else (
    echo F-Secure installer not found!
)

:: Install GlassWire
if exist "GlassWire\glasswire-install.exe" (
    echo Installing GlassWire...
    start /wait GlassWire\glasswire-install.exe /S
) else (
    echo GlassWire installer not found!
)

:: Install Hashcat
if exist "Hashcat\hashcat-install.exe" (
    echo Installing Hashcat...
    start /wait Hashcat\hashcat-install.exe /S
) else (
    echo Hashcat installer not found!
)

:: Install Wireshark
if exist "Wireshark\wireshark-install.exe" (
    echo Installing Wireshark...
    start /wait Wireshark\wireshark-install.exe /S
) else (
    echo Wireshark installer not found!
)

:: Add more installations here as needed

echo.
echo Installation complete.
echo You are done.
timeout /t 2 /nobreak >nul
exit
