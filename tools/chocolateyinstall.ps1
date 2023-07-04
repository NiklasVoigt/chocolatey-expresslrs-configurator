$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/ExpressLRS/ExpressLRS-Configurator/releases/download/v1.5.6/ExpressLRS-Configurator-Setup-1.5.6.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url

  softwareName  = 'ExpressLRS-Configurator*'

  checksum      = 'b7fd057527fa829b5e1d1969ac274f992800201fdafef5f5b917d98bc1e5f840'
  checksumType  = 'sha256'

  silentArgs    = "/S /allusers"
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
