
$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'http://dl.bitrix24.com/b24/bitrix24_desktop.msi'
  checksum       = '6AFE17B867BA2B4B51824C32F4052CB1296ACF8DE28CB750C7013E8143127BBF'
  checksumType   = 'sha256'
  fileType       = 'MSI'
  silentArgs     = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`"" # ALLUSERS=1 DISABLEDESKTOPSHORTCUT=1 ADDDESKTOPICON=0 ADDSTARTMENU=0
  validExitCodes = @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs