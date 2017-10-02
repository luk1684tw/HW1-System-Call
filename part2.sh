#!/bin/bash
cd code/build.linux
echo "Rebuild NachOS"
make clean
make

cd ../
cd test
make clean
make fileIO_test1 
../build.linux/nachos -e fileIO_test1 
