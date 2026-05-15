#!/bin/bash
free -h | grep Mem | awk '{print$2}' > /home/vagrant/RTA_Examen_20260507/Punto_F/Filtro_Basico.txt



