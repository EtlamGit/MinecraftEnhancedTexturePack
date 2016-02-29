#!/bin/sh

cd ..

find ./32x  -name *.png -type f -exec identify {} \; > ./work/identify_32.log
find ./64x  -name *.png -type f -exec identify {} \; > ./work/identify_64.log
find ./96x  -name *.png -type f -exec identify {} \; > ./work/identify_96.log
find ./128x -name *.png -type f -exec identify {} \; > ./work/identify_128.log
find ./256x -name *.png -type f -exec identify {} \; > ./work/identify_256.log

find ./16x/minecraft_1.7.10 -name *.png -type f -exec identify {} \; > ./work/identify_vanilla_1.7.10.log
find ./16x/minecraft_1.8.8  -name *.png -type f -exec identify {} \; > ./work/identify_vanilla_1.8.8.log
find ./16x/minecraft_1.9    -name *.png -type f -exec identify {} \; > ./work/identify_vanilla_1.9.log

cd work
