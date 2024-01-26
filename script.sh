#!/bin/bash

growpart /dev/sda 3 
sudo pvresize /dev/sda3  

sudo lvextend -l +100%FREE /dev/ubuntu-vg/ubuntu-lv 


resize2fs /dev/ubuntu-vg/ubuntu-lv
fdisk -l