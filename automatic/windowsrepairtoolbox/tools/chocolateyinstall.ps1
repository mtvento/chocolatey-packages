
$ErrorActionPreference = 'Stop';


$packageName= 'windowsrepairtoolbox'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://windows-repair-toolbox.com/download/click.php?id=Windows_Repair_Toolbox'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64

  softwareName  = 'windowsrepairtoolbox*'

  checksum      = '887B732896E9A4DD7643F0117ACD2CFC'
  checksumType  = '{{ChecksumType}}'

  validExitCodes= @(0, 3010, 1641)
 silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
}

Install-ChocolateyPackage @packageArgs










    








