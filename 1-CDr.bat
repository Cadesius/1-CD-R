@ECHO OFF
ECHO 1-Click Disc Ripper by Cade Simpson
ECHO Released under The IDGAF License v1.0
ECHO:

SET /P DriveLetter=Input disc drive letter: 
ECHO:
SET /P Storage=Input storage directory: 
ECHO:
SET /P DiscName=Input disc name: 
ECHO:

<nul set /p "=Insert disc, then press any key to continue..."
pause >nul
ECHO:

dd-0.5\dd.exe bs=4096 if="\\.\%DriveLetter%:" of="\\.\%Storage%\%DiscName%.iso" --progress
powershell "(new-object -COM Shell.Application).NameSpace(17).ParseName('D:').InvokeVerb('Eject')"

ECHO:
ECHO Disc ripped!
<nul set /p "=Press any key to close..."
pause >nul