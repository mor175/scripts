#!/bin/bash

rm -rf build/make/
rm -rf vendor/lge/
rm -rf frameworks/base/
rm -rf kernel/lge/msm8996/
rm -rf device/lge/msm8996-common/
rm -rf device/lge/g6-common/
rm -rf device/lge/h870/

repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags
repo sync -c -j1 --fail-fast --no-clone-bundle --no-tags

source build/envsetup.sh

source scripts/fixes.sh