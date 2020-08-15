#!/bin/sh

cd build
cmake ..
make -j4
cd ..
cp -u build/broken_seals site 
