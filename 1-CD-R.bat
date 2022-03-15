@ECHO OFF

@REM Intro text 
ECHO 1-Click Disc Ripper by Cade Simpson
ECHO Released under The IDGAF License v1.0
ECHO:

@REM Assign variables for disc drive letter and storage directory
SET /P DriveLetter=Input disc drive letter: 
ECHO:
SET /P Storage=Input storage directory: 
ECHO:

@REM Check to see whether storage directory already exists, and then redirect
IF EXIST "%Storage%\" (
    GOTO :NAMING
) ELSE (
    GOTO :CREATING
)

@REM Gives user the option of creating their chosen directory if it does not already exist (defaults to program end if the user chooses not to)
:CREATING
CHOICE /M "The directory you have chosen does not exist, would you like to create it"
IF %ERRORLEVEL% EQU 1 GOTO :MAKEDIR
IF %ERRORLEVEL% EQU 2 GOTO :END

@REM Creates directory chosen by user
:MAKEDIR
MKDIR "%Storage%"
ECHO Directory created!
ECHO:

@REM Assign variable for disc name (this only affects the name of the image file, not the title of the image when mounted)
:NAMING
SET /P DiscName=Input disc name: 
ECHO:

@REM Pauses before ripping process begins
<nul set /p "=Insert disc, then press any key to continue..."
pause >nul
ECHO:

@REM Shows disc details
ECHO:
ECHO Disc information:
powershell "cd %DriveLetter%:; ls -r | measure -sum Length"

@REM Executes dd.exe for ripping and packing into image file
dd-0.5\dd.exe bs=4096 if="\\.\%DriveLetter%:" of="\\.\%Storage%\%DiscName%.iso" --progress

@REM Confimation message
ECHO:
ECHO Disc ripped!
ECHO:

@REM Display popup to notify user that ripping process is completed

powershell -Command "Add-Type -AssemblyName  System.Windows.Forms;$global:balloon = New-Object System.Windows.Forms.NotifyIcon;$path = (Get-Process -id $pid).Path;$balloon.Icon  = [System.Drawing.Icon]::ExtractAssociatedIcon('data/notif_icon.ico');$balloon.BalloonTipText  = 'Ripping of %DiscName% from drive %DriveLetter%: completed';$balloon.BalloonTipTitle  = '1-CD-R Notification';$balloon.Visible  = $true;$balloon.ShowBalloonTip(5000)"

@REM Gives user the option to eject the relevant disc tray (or removable media) before exiting the program
:END
ECHO:
CHOICE /M "Would you like to eject the disc tray before exiting"
IF %ERRORLEVEL% EQU 1 GOTO :EJECT
IF %ERRORLEVEL% EQU 2 GOTO :FINISH

@REM Inject Powershell script to eject the drive chosen earlier by the user
:EJECT
powershell "(new-object -COM Shell.Application).NameSpace(17).ParseName('%DriveLetter%:').InvokeVerb('Eject')"

@REM Exits program upon user confirmation
:FINISH
ECHO:
<nul set /p "=Press any key to close the program..."
pause >nul