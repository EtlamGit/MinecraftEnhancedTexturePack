#!/bin/sh

# construct release version name
BRANCH=$(git rev-parse --abbrev-ref HEAD)
COMMIT=$(git log -1 --format=%ci)
VERSION=${BRANCH}-${COMMIT%% *}
echo $VERSION


cd ..

# build these release for all sizes
for SCALE in 32x 64x 96x 128x 256x
do
  cd ${SCALE}

  zip ../ME_${SCALE}_Blocks_${VERSION}.zip -@ < ../work/release_BLOCKS_files.lst
  zip ../ME_${SCALE}_Items_${VERSION}.zip -@  < ../work/release_ITEMS_files.lst
  zip ../ME_${SCALE}_Mobs_${VERSION}.zip -@   < ../work/release_MOBS_files.lst
  zip ../ME_${SCALE}_Base_${VERSION}.zip -@   < ../work/release_BASE_files.lst

  cd ..
done


# build GUI release only for 32x and 64x
for SCALE in 32x 64x
do
  cd ${SCALE}

  zip ../ME_${SCALE}_GUI_${VERSION}.zip -@    < ../work/release_GUI_files.lst

  cd ..
done

cd work
