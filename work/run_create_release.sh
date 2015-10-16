#!/bin/sh

VER=1.7-`date +%Y-%m-%d`

cd ..

for SCALE in 32x 64x 96x 128x 256x
do

  cd ${SCALE}

  zip ../MCE_${SCALE}_Blocks_${VER}.zip -@ < ../work/release_BLOCKS_files.lst
  zip ../MCE_${SCALE}_Items_${VER}.zip -@  < ../work/release_ITEMS_files.lst
  zip ../MCE_${SCALE}_Mobs_${VER}.zip -@   < ../work/release_MOBS_files.lst
  zip ../MCE_${SCALE}_GUI_${VER}.zip -@    < ../work/release_GUI_files.lst
  zip ../MCE_${SCALE}_Base_${VER}.zip -@   < ../work/release_BASE_files.lst

  cd ..

done

cd work