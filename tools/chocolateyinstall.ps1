$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/ExpressLRS/ExpressLRS-Configurator/releases/download/v1.5.1/ExpressLRS-Configurator-Setup-1.5.1.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url

  softwareName  = 'ExpressLRS-Configurator*'

  checksum      = '8bcd96c76038e9fc81f697b69be6474bd92ae4455a098bcb03dc0e5214bdbce0'
  checksumType  = 'sha256'

  silentArgs    = "/S /allusers"
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
