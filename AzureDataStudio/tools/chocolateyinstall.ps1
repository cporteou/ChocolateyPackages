
$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://go.microsoft.com/fwlink/?linkid=2083323'
  checksum       = '153BF594089CBC51D675702C4E4B575D8F71B75D2958FB456D6B4BC1576E18B8'
  checksumType   = 'sha256'
  fileType       = 'EXE'
  silentArgs     = '/s'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
