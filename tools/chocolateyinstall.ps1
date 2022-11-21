$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/ExpressLRS/ExpressLRS-Configurator/releases/download/v1.5.3/ExpressLRS-Configurator-Setup-1.5.3.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url

  softwareName  = 'ExpressLRS-Configurator*'

  checksum      = 'd9e99c31dafbc28389c2c433d0b9a53d676325118648dfa4c054c0f1a0ae1d91'
  checksumType  = 'sha256'

  silentArgs    = "/S /allusers"
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
