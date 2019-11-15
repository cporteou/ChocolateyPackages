$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://download.microsoft.com/download/8/8/0/880BCA75-79DD-466A-927D-1ABF1F5454B0/PBIDesktopSetup.exe'
  url64bit       = 'https://download.microsoft.com/download/8/8/0/880BCA75-79DD-466A-927D-1ABF1F5454B0/PBIDesktopSetup_x64.exe'
  checksum       = '9A42793F1E4B6B1D642C05A41D1D03F49A79DA1A85F09E508A5367DE69222002'
  checksumType   = 'SHA256'
  checksum64     = '5148216057861AFD4770B1009E5B1754E86903E329B8B1020B95201FC99578E0'
  checksumType64 = 'SHA256'
  fileType       = 'EXE'
  silentArgs     = '-quiet -norestart ACCEPT_EULA=1'
  validExitCodes = @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
