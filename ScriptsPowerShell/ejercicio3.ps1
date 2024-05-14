$num1 = [double](Read-Host "Ingrese un numero")

if ($num1 -gt 0) {
	Write-Host "$num1 es positivo"
} elseif ($num1 -eq 0) {
	Write-Host "$num1 es igual a 0"
} else {
	Write-Host "$num1 es negativo"
}

for (($i = $num1); $i -gt -1; $i--)
{
    "$i"
}