$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/ExpressLRS/ExpressLRS-Configurator/releases/download/v1.5.5/ExpressLRS-Configurator-Setup-1.5.5.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url

  softwareName  = 'ExpressLRS-Configurator*'

  checksum      = '38eac89aa5ed087a32a41908f51948fd618dcf49d3da71258850ed5152fd7fca'
  checksumType  = 'sha256'

  silentArgs    = "/S /allusers"
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
