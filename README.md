# The 1-Click Disc Ripper

The 1-Click Disc Ripper (1-CDr - geddit?) is a simple batch script tool built on top of the windows version of dd (included for simplicity) that is designed to do only one thing: make ripping any removable media to a .ISO disc image as simple as possible.

The program adheres to the suckless design philosophy, and as a result is super lightweight, occupies under 1MB of storage, and will run on pretty much every Windows machine under the sun (Linux (bash) version coming at some point... maybe - if you use linux, but can't figure out the dd tool, you may be doing something wrong?).

I'll look to expand functionality in the near future (without adding bloat mind you), so keep an eye on the repo if you find the tool useful.

## Documentation

This script is pretty self explanatory, but for anyone having issues, here's the process:

### One

Download the project from this page by clicking on the green "Code" button in the top right hand corner of the page, and then clicking "Download ZIP". Extract the contents of the .zip file wherever you like - the program is completely portable, so it can even be run off an USB stick. It also doesn't require administrator privileges to run, so you should be able to use it whether your IT guys want you to or not...

<img src="https://sam.nl.tab.digital/apps/files_sharing/publicpreview/c4kBe7ky6XAF8Gs?x=1885&y=614&a=true&file=ONE.PNG&scalingup=0" alt="Downloading" title="Downloading"/>

### Two

Choose something to rip. In this case, I'll be using my copy of the first Quake game on CD-ROM, but this program will essentially create .ISO files out of any removable media (although I designed it specifically with optical media in mind).

<img src="https://www.quaddicted.com/_media/library/quake_registered_1.01_id_-_disc_-_unconnet.jpg" alt="Quake Disc" title="Quake Disc" width="300"/>

### Three

Run the 1-CDr.bat file in the main directory - it should open in a command prompt window. (I'm using Windows 7 here, so it may look a little different to 10/11, but everything should essentially be the same)

<img src="https://sam.nl.tab.digital/apps/files_sharing/publicpreview/o6YQzkN6fnZGGHx?x=1885&y=614&a=true&file=THREE.PNG&scalingup=0" alt="Running the Script" title="Running the Script"/>

### Four

Enter the letter Windows has associated with your removable media - by default, Windows will assign the letter "D" to your CD/DVD drive. In the image above, you can see that the Quake disc has been loaded with the letter "D" associated. You can see that all other attached storage devices have their own assigned letters. (Basically, CD/DVD will be "D", and each media device will be assigned letters after "D" in alphabetical order, with the exception of any floppy disk drives, which are by default assigned "A", and any custom drives letters assigned - such as my "Z" Shared Storage drive shown above)

Since I'm copying the Quake CD-ROM, I'll enter "D" for the relevant drive

### Five

Next, the script will prompt for a storage directory, which is where the packed .ISO file will be placed. This can be anywhere you like. If you're not comfortable typing out directories, I recommend copying your chosen directory from Windows Explorer. Here, I am going to store the created disc image in a folder on a USB stick (assigned "E")

<img src="https://sam.nl.tab.digital/apps/files_sharing/publicpreview/mGJ8KAWcyF2TYAm?x=1885&y=614&a=true&file=FIVE.PNG&scalingup=0" alt="Storage Directory" title="Storage Directory"/>

A couple of things to note:

1. In Windows 10, to paste into a command prompt window, simply right click anywhere within the window. On Windows 7, you have to right click, and then select past from the dropdown menu. You can't use the default Ctrl-V shortcut on either version of Windows, so you must use one of these.

2. Currently, this program will not create directories, and if you enter a directory that doesn't exist, the program will complete without actually creating a .ISO file.

### Six

When prompted, enter the name of your disc. All this does is determine the filename of the created disc image file. For this, I will name the disc "QUAKE".

After this, the setup is completed, and you will be asked to press any key to continue. After that, the ripping process will begin.

Note: You do not have the insert the disc until you are asked to do so. This is so that you are able to read disc labels and the such while you are completing the setup. As long as you insert the disc before pressing any key to continue, the program should run without problems. You also do not need to wait for Windows to recognise the disc before doing so, the disc only needs to be inserted.

<img src="https://sam.nl.tab.digital/apps/files_sharing/publicpreview/NoQtjLK4CtyKFgq?x=1885&y=614&a=true&file=SIX.PNG&scalingup=0" alt="Setup" title="Setup"/>

Depending on the size of the disc, this process may take a while, especially for DVDs and other larger format storage mediums. Patience is key.

### Seven

Once the ripping process is completed, press any key to close the program. (This will also eject the disc tray automatically) You should now be able to see the compiled .ISO image in your chosen directory. If you have any doubts as to whether the program ran successfully, you should re-run the program. You may notice that an error occasionally flags up saying that blocks were not copied. If any more than one block is dropped, re-run the program.

<img src="https://sam.nl.tab.digital/apps/files_sharing/publicpreview/6tSpfmzaB5XorQF?x=1885&y=614&a=true&file=SEVEN.PNG&scalingup=0" alt="Setup" title="Setup"/>

You can also compare the ripped image with the original disc/media. In Windows 10, simply double click on the disc image to mount it on a virtual drive, which emulates the original disc drive. Windows 7 does not have this functionality, but you can use 7-Zip or an equivalent program to view the contents of the .ISO file.

And that's it! You now have a complete one to one copy of your disc/media.

## Usage

