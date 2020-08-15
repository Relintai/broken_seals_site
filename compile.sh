#!/bin/sh

cd build
make -j4
cd ..
cp -u build/broken_seals site 
