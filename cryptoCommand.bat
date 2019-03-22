Title cryptoCommand by Hood
@echo off
set EXE=ethdcrminer64.exe
set miner=EthDcrMiner64.exe -epool <miningPool>:<port #> -ewal <yourWallet>.<yourMiner> -epsw x -mport <port #> -mpsw
set time=60
echo:
start "Crypto-Miner" %miner%
echo:
:start
cls
color 0a
echo ----------------------------------------------------------
echo "A Simple Script To Watch your Miner & Restart If Needed."
echo ----------------------------------------------------------
echo:
tasklist /FI "IMAGENAME eq %EXE%" /FI "status eq running" | find /I "%EXE%" >nul && (
ECHO Everything Is OK
timeout /t %time%
goto :start) || (
taskkill /f /im "%EXE%"
color c
ECHO ERROR: Restarting Miner
start %miner%
)
timeout /t 30
goto start
