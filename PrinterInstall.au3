#Just replace "PrinterInstall.ps1" with the name of the accompanying install script
Run("powershell.exe -ExecutionPolicy Bypass -file " & FileGetShortName(@ScriptDir) & "\PrinterInstall.ps1")
