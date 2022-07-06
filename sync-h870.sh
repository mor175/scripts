#!/bin/bash

rm -rf build/make/
rm -rf vendor/lge/
rm -rf frameworks/base/
rm -rf kernel/lge/msm8996/
rm -rf device/lge/msm8996-common/
rm -rf device/lge/g6-common/
rm -rf device/lge/h870/

$HOME/bin/repo sync -c -n -j 4 --no-clone-bundle --no-tags && $HOME/bin/repo sync -c -l -j$(nproc --all) --force-sync --no-clone-bundle --no-tags

## if sync failed try this :
## $HOME/bin/repo sync -c -j1 --fail-fast --force-sync --no-clone-bundle --no-tags

## eOS - remove prebuiltapks contents
rm -rf prebuilts/prebuiltapks/*
## eOS - force load of prebuiltapks
git clone https://gitlab.e.foundation/e/os/android_prebuilts_prebuiltapks_lfs.git -b main

source build/envsetup.sh

source scripts/fixes.sh
