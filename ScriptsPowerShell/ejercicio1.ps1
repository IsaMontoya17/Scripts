param (
    [double]$numero1,
    [double]$numero2
)

# Suma
$suma = $numero1 + $numero2
Write-Host "Suma de $numero1 y $numero2 es: $suma"

# Resta
$resta = $numero1 - $numero2
Write-Host "Resta de $numero1 y $numero2 es: $resta"

# Multiplicacion
$multiplicacion = $numero1 * $numero2
Write-Host "Multiplicación de $numero1 y $numero2 es: $multiplicacion"

# Division
if ($numero2 -ne 0) {
    $division = $numero1 / $numero2
    Write-Host "División de $numero1 entre $numero2 es: $division"
} else {
    Write-Host "No se puede dividir entre cero."
}

# Potencia
$potencia = [Math]::Pow($numero1, $numero2)
Write-Host "$numero1 elevado a la potencia $numero2 es: $potencia"
