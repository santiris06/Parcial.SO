#!/bin/bash

IP=$(curl -s ifconfig.me)
MHz=$(grep MHz /proc/cpuinfo | head -n1 | awk '{print $4}')
CPU=$(grep "model name" /proc/cpuinfo | head -n1 | awk  -F ':' '{print $2}')



mkdir -p $HOME/Punto_G

cat << EOF > $HOME/Punto_G/Filtro_Avanzado.txt

mi ip publica es: $IP
La frecuencia es: $MHz
Modelo CPU: $CPU

EOF

