# cryptoCommand
A Simple Script To Watch Your Crypto-currency Miner.

**used and tested with "claymore_dual" miner, please modify the script to fit your needs**
How to edit the script:
  *it is not recommended to change the script other than to add your own "minerExecutable", and whatever syntax is needed to run your miner such as "yourWallet" address.*
//Place Script in same directory as Miner Software .exe file.

set EXE=<minerExecutable>
  example: set EXE=ethdcrminer64.exe

set miner=<string for Miner Software>
  example: set miner=EthDcrMiner64.exe -epool us2.ethermine.org:4444 -ewal <yourWallet>.<yourMinerName> -epsw x -mport 3333 -mpsw <poolPassword>

set time=60
  // time it takes between checks to see if miner is still running.

timeout /t 30
  // time it takes when miner is down to re-check if Mining Software has restarted.

color 0A
  // sets background to black and text color to green; text will change to red if Mining Software stops.

Other color codes:
  Color attributes are specified by TWO hex digits — the first corresponds to the background; the second the foreground. Each digit can be any of the following values:

0	=	Black	 	  
1	=	Blue	 	 
2	=	Green	 	  
3	=	Aqua	 	  
4	=	Red	 	    
5	=	Purple	  
6	=	Yellow	 
7	=	White
8	=	Gray
9	=	Light Blue
A	=	Light Green
B	=	Light Aqua
C	=	Light Red
D	=	Light Purple
E	=	Light Yellow
F	=	Bright White
