#!/bin/sh

# Temporary git clone, this will be converted to submodules after I'm sure there are no gotchas with
# the project's directory structure as messing with submodules can be a huge PITA
git clone https://github.com/an-tao/drogon drogon
cd drogon
git checkout f0110a642dcd31db9f339a49cac34de77ccec06f
git submodule update --init
mkdir build
cd build
cmake ..
make -j4

cd ..
cd ..

mkdir build
cd build
cmake ..
make