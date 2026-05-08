#!/bin/bash

sudo groupadd p1c1_2025_g1
sudo groupadd p1c1_2025_gTodos

MIUSUARIO=$(whoami)
sudo useradd -G p1c1_2025_g1 -s /bin/bash -m -p "$(sudo grep $MIUSUARIO /etc/shadow | awk -F ':' '{print $2}')" p1c1_2025_u1



