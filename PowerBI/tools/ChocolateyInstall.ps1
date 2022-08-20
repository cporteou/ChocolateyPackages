$ErrorActionPreference = 'Stop'

$packageArgs = @{
   packageName    = $env:ChocolateyPackageName
   url            = 'https://download.microsoft.com/download/8/8/0/880BCA75-79DD-466A-927D-1ABF1F5454B0/PBIDesktopSetup.exe'
   url64bit       = 'https://download.microsoft.com/download/8/8/0/880BCA75-79DD-466A-927D-1ABF1F5454B0/PBIDesktopSetup_x64.exe'
   checksum       = 'c51b9117d8734207f4e439e4aa9e3c7bedac0a160f2600ed8b36dccb237df7a8'
   checksumType   = 'SHA256'
   checksum64     = '0a64d3e1babcdbbff202140eae170ecf7858c6343caf8e9ce12ccb2963c4fa52'
   fileType       = 'EXE'
   silentArgs     = "-quiet -norestart ACCEPT_EULA=1 -log `"$env:TEMP\$env:ChocolateyPackageName.$env:chocolateyPackageVersion.Install.log`""
   validExitCodes = @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
