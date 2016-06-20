#!/bin/bash
dir=$1
cd $dir
sudo apt-get install libxml2 libxml2-dev
make clean
./configure \
    --prefix=/home/work/php \
    --enable-fpm \
    --enable-mbstring \
    --with-mysql
make
make install
cp php.ini-development /home/work/php/etc/php.ini
