$num1 = [double](Read-Host "Ingrese el primer número")
$num2 = [double](Read-Host "Ingrese el segundo número")

if ($num1 -gt $num2) {
	Write-Host "$num1 es mayor que $num2"
} elseif ($num1 -eq $num2){
	Write-Host "$num1 es igual a $num2"
} else {
	Write-Host "$num2 es mayor que $num1"
}