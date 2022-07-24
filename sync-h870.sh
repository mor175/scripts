#!/bin/bash

rm -rf build/make/
rm -rf vendor/lge/
rm -rf frameworks/base/
rm -rf kernel/lge/msm8996/
rm -rf device/lge/msm8996-common/
rm -rf device/lge/g6-common/
rm -rf device/lge/h870/

$HOME/bin/repo sync -c -n -j4 --no-clone-bundle --no-tags && $HOME/bin/repo sync -c -l -j$(nproc --all) --force-sync --no-clone-bundle --no-tags

source build/envsetup.sh

source scripts/fixes.sh

#rm -rf packages/apps/Updater/
