#!/bin/bash

source build/envsetup.sh

export TARGET_RELEASE='bp1a'
export BRANCH_NAME='v4.2-a15'
export DEVICE_LIST='h870'
export RELEASE_TYPE='unofficial'
build_build_var_cache

make clean

croot
breakfast h870

croot
brunch h870
# if 'brunch' give you warnings or error, instead try this :
# mka h870 -j4
