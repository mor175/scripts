#!/bin/bash
source scripts/sync-h870.sh

source build/envsetup.sh

export TARGET_RELEASE='bp1a'
export BRANCH_NAME='a15'
export DEVICE_LIST='h870'
export RELEASE_TYPE='unofficial'
build_build_var_cache

make clean

breakfast h870

croot
brunch h870
