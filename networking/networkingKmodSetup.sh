#!/bin/bash

manually: sudo apt update

wget https://s3-us-west-2.amazonaws.com/aq-media/wp-content/uploads/2019/06/20190605_Linux_ver_2.2.6.0.178.zip
unzip 20190605_Linux_ver_2.2.6.0.178.zip
rm -rf 20180706_Linux_2.0.15.0/
cd 20190605_Linux_ver_2.2.6.0.178
tar -xf atlantic.tar.gz
cd Linux

sudo apt install -y dkms gawk
sudo apt install -y --reinstall linux-headers-5.2.0-1116-ayufan
sudo ./dkms install
sudo modprobe atlantic 
