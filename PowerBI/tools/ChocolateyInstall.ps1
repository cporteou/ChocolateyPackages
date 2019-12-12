$ErrorActionPreference = 'Stop'

$packageArgs = @{
   packageName    = $env:ChocolateyPackageName
   url            = 'https://download.microsoft.com/download/8/8/0/880BCA75-79DD-466A-927D-1ABF1F5454B0/PBIDesktopSetup.exe'
   url64bit       = 'https://download.microsoft.com/download/8/8/0/880BCA75-79DD-466A-927D-1ABF1F5454B0/PBIDesktopSetup_x64.exe'
   checksum       = '60beeb08a95f51775528f1a87d4b8edeabc63f483a4cd98a2230565d17866d10'
   checksumType   = 'SHA256'
   checksum64     = 'c476bc9f3a6aa0cb748a69ccf9d63e33135e78ab0a483ce1c8eae2db90ac17c0'
   fileType       = 'EXE'
   silentArgs     = "-quiet -norestart ACCEPT_EULA=1 -log `"$env:TEMP\$env:ChocolateyPackageName.$env:chocolateyPackageVersion.Install.log`""
   validExitCodes = @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
