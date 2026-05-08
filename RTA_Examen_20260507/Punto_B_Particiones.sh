#! /bin/bash
 
DISCO=$(sudo fdisk -l | grep "8 GiB" | awk '{print $2}' | awk -F ':' '{print $1}')

echo "El disco es: $DISCO" 

sudo fdisk $DISCO << EOF
n
p
1

+1G
n
p
2

+1G
n
e
3


n

+2G
n

+2G
n


w
EOF

echo
echo "Disco particionado"
echo
sudo fdisk -l $DISCO

