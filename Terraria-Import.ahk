#Requires AutoHotkey v2.0
#NoTrayIcon
;@Ahk2Exe-Base ..\v2.0.2\AutoHotkey64.exe, App\Terraria\Terraria-Import.exe

if (A_IsCompiled)
    basePath := A_ScriptDir . "\..\.."
else
    basePath := A_ScriptDir
referenceFiles := basePath . "\Data\settings\import-files"
referenceFolders := basePath . "\Data\settings\import-folders"
referenceDLLs := basePath . "\Data\settings\import-DLLs"
installPath := basePath . "\App\Terraria"

MsgBox("Please locate and select your DRM-free Terraria installation folder in the upcoming dialog.")
sourcePath := FileSelect("D1", A_ProgramFiles, "Locate Terraria's Install Folder")
if sourcePath = "" 
{
    MsgBox("Because Terraria is paid software, you must import your own DRM-free version of the game in order for this PortableApp to function.")
    ExitApp
}

;@Ahk2Exe-IgnoreBegin
if DirExist(installPath)
    DirDelete(installPath, Recurse := true)
if FileExist(installPath)
    FileDelete(installPath)
;@Ahk2Exe-IgnoreEnd
DirDelete(basePath . "Other")
loop read referenceFolders
    DirCopy(sourcePath . "\" . A_LoopReadLine, installPath . "\" . A_LoopReadLine, true)
loop read referenceFiles
    FileCopy(sourcePath . "\" . A_LoopReadLine, installPath, true)
loop read referenceDLLs
    FileCopy(A_LoopReadLine, installPath, true)
FileSetAttrib("+H", installPath . "\*.dll")
MsgBox("Terraria has been successfully imported as a PortableApp. You may now move it as you wish.")