@ECHO OFF
ECHO Clearing out any Terraria files...
RMDIR /Q /S "%CD%\App\Terraria"
MKDIR "%CD%\App\Terraria"
ECHO Done!

ECHO Searching for AutoHotkey compiler...
FOR /f "tokens=2*" %%a IN ('reg query "HKEY_CURRENT_USER\Software\AutoHotkey" /v "InstallDir" 2^>nul') do set "InstallDir=%%b"
ECHO Attempting to compile scripts...
%InstallDir%\Compiler\Ahk2Exe.exe /silent /in "%CD%\Bootstrapper.ahk"
%InstallDir%\Compiler\Ahk2Exe.exe /silent /in "%CD%\Terraria-Import.ahk"
ECHO Done! The PortableApp is now ready for packaging.