$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/ExpressLRS/ExpressLRS-Configurator/releases/download/v1.5.0/ExpressLRS-Configurator-Setup-1.5.0.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url

  softwareName  = 'ExpressLRS-Configurator*'

  checksum      = 'f5077cdb70b4087cc2d26f57e6cfddcb6b708e4657ec4ddf707995b64ddd602e'
  checksumType  = 'sha256'

  silentArgs    = "/S /allusers"
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
