#!/bin/bash
cd code/build.linux
echo "Rebuild NachOS"
make clean
make

cd ../
cd test
make clean
make
../build.linux/nachos -e consoleIO_test1
../build.linux/nachos -e consoleIO_test2

