#!/bin/bash
set -ex

if [ ! -d .jansson-2.12 ]; then
    wget http://www.digip.org/jansson/releases/jansson-2.12.tar.bz2
    tar xf jansson-2.12.tar.bz2
    mv jansson-2.12 .jansson-2.12
(
 cd .jansson-2.12/
 ./configure --enable-static=yes --enable-shared=no
 make
 cp ./src/.libs/libjansson.a ../
)
fi
