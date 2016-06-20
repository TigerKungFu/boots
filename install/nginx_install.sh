#!/bin/bash
dir=$1
cd $dir
sudo apt-get install gcc libpcre3 libpcre3-dev libssl-dev
make clean
./configure \
    --prefix=/home/work/nginx \
    --with-http_ssl_module
make
make install
