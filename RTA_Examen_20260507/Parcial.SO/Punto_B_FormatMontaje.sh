#!/bin/bash

DISCO=$(sudo fdisk -l | grep "8 GiB" | awk '{print $2}' | awk -F ':' '{print $1}')

 sudo fdisk -l $DISCO | grep Linux | awk '{print "sudo mkfs.ext4 " $1}' | /bin/bash


 sudo mount /dev/sdc1 $HOME/Astronomia/planeta/Gravedad
 sudo mount /dev/sdc2 $HOME/Astronomia/planeta/Orbita


