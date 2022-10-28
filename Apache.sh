#!/bin/bash

#----------This is an installation script on Alpine,Ubuntu and centos--------#
#Author:Vorke
#Date:10/27/2022

sudo apt-get update

sudo apt-get install apache2

hostname -I | awk '{print $1}'

sudo ufw show app list

sudo systemctl stop apache2.service