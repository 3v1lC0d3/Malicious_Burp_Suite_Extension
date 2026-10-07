$rutaArchivo = "HellsGate.exe"

$bytes = [System.IO.File]::ReadAllBytes($rutaArchivo)
$base64 = [Convert]::ToBase64String($bytes)

$longitudTotal = $base64.Length
$tamanoParte = [Math]::Ceiling($longitudTotal / 4)

$c1 = $base64.Substring(0, $tamanoParte)
$c2 = $base64.Substring($tamanoParte, $tamanoParte)
$c3 = $base64.Substring(($tamanoParte * 2), $tamanoParte)
$c4 = $base64.Substring($tamanoParte * 3)


Write-Output ('String cadena1 = "' + $c1 + '";')
Write-Output ('String cadena2 = "' + $c2 + '";')
Write-Output ('String cadena3 = "' + $c3 + '";')
Write-Output ('String cadena4 = "' + $c4 + '";')


