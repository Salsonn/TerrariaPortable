# Terraria Portable
This readme file is being thrown together now to be _heavily_ refined later, so yes: I know it sucks.

## Features
* Semi-automatic installer
* Portable game data (technically options)

## Okay, what is this?
Terraria is a great game. Honestly, probably my favorite of all time, but it's far more fun for me to play with friends. Since I don't like waiting forever to install Terraria on a bunch of friend's PCs (nor do I always have administrative access _to_ install on some ~school~ computers), I've created this portable wrapper to accomodate that in a more streamlined manner.
  
## Installation

### Prerequisites
* A computer you have administrative rights on
* A DRM-free copy of Terraria (tested specifically on [GOG.com](gog.com)'s version

### Intructions
* Download and install Terraria on the computer you have administrative rights on.
* Download and/or install any dependencies required for Terraria to run.
* Launch Terraria at least once to make sure it runs properly
* Download the latest version of the Terraria Portable wrapper from [the releases page](https://github.com/Salsonn/TerrariaPortable/releases/latest)
* Run the setup and launch the application once it is complete.
* Follow the import instructions to portablize your copy of Terraria.
* Pray I did my job well enough that it works.

### Notes/Warnings
* This application may not set itself up correctly if the import is done on a computer with an old installation of Terraria, as the dependencies may not be located in the same place. This includes if an installation of Terraria has been kept up to date. No guarantees.
* Save data is also stored within Terraria Portable, this is likely exactly what you want, but it does mean if somebody is borrowing your portable version of Terraria, the save data they make will stay with the application, not the device it runs on.

## A Note on Versioning
Everywhere that matters will follow the latest, known-compatible version of Terraria. The releases page will include a PAF (PortableApps Format) version to indicate the iteration of the PortableApp itself.

## Development/Contributions
This application relies on the PortableApps Framework (PAf or PAF or something) along with AutoHotkey to manage the import steps. The AutoHotkey scripts are compiled into two different executables: one to launch in place of `Terraria.exe` (since it hasn't been imported yet), and another that actually does the import process (so as to still be able to overwrite `Terraria.exe`. If AutoHotkey is already installed on the target machine, the uncompiled import script will work just fine without any fiddling.

### Instructions
* Clone repo
  * `git clone https://github.com/Salsonn/TerrariaPortable`
  * OR just use GitHub Desktop
* Install [AutoHotkey](https://autohotkey.com)
  * Download from the website OR
  * `winget install AutoHotkey.AutoHotkey`
Download and install:
* [PortableApps.com Launcher Generator](https://portableapps.com/apps/development/portableapps.com_launcher)
* [PortableApps.com Installer Generator](https://portableapps.com/apps/development/portableapps.com_installer)
