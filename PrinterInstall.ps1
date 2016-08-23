Function PortInstall {            
param ($PortName,$PrinterIP,$servername)            
            
$PPrinter=([WMIClass]"\\.\ROOT\cimv2:Win32_TcpIpPrinterPort").CreateInstance()            
$PPrinter.name           = $PortName            
$PPrinter.Protocol       = 1            
$PPrinter.HostAddress    = $PrinterIP            
$PPrinter.PortNumber     = 9100            
$PPrinter.Put()            
            
}            
PortInstall -PortName "IP_ADDRESS" -PrinterIP "IP_ADDRESS"

Function Printerinstall {            
param ($caption,$PortName,$DriverName,$IsDefault=$false)             
            
$iprinter = ([WMIClass]"\\.\Root\cimv2:Win32_Printer").CreateInstance()            
$iprinter.Caption     =$caption            
$iprinter.DriverName  =$DriverName            
$iprinter.PortName    =$PortName            
$iprinter.DeviceID    =$caption            
$iprinter.Default     = $IsDefault            
$iprinter.Put()            
}            
Printerinstall -caption "NAME_OF_PRINTER" -PortName "IP_ADDRESS" -IsDefault $true -DriverName "EXACT_NAME_OF_DRIVER"
