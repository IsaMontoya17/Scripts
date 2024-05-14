#!/bin/bash

# URLs
URLNOMBRES="https://raw.githubusercontent.com/olea/lemarios/master/nombres-propios-es.txt"
URLGENERO="https://api.genderize.io/?name="
URLNACIONALIDAD="https://api.nationalize.io/?name="

# Descargar el archivo de nombres y almacenarlo en nombres.txt
curl -s "$URLNOMBRES" -o nombres.txt

nombres=$(grep -i '^a' nombres.txt | shuf -n 5)
nombres_a=$(grep -i '^a' nombres.txt | shuf -n 5)
nombres_l=$(grep -i '^l' nombres.txt | shuf -n 5)
nombres_sin_a_l=$(grep -ivE '^[al]' nombres.txt | shuf -n 5)

todos_los_nombres="$nombres_a"$'\n'"$nombres_l"$'\n'"$nombres_sin_a_l"

for name in $todos_los_nombres; do
        genero=$(curl -s "$URLGENERO$name" | jq '.gender')
        nacionalidad=$(curl -s "$URLNACIONALIDAD$name" | jq '.country[0].country_id')
        echo "$name"
        echo "Gender of $name is: $genero"
        echo "Country of $name is: $nacionalidad"
        echo "-----------------------------------"
done

