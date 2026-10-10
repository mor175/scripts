#!/bin/bash

source build/envsetup.sh

export TARGET_RELEASE='bp1a'
export BRANCH_NAME='v4.3-a15'
export DEVICE_LIST='h870'
export RELEASE_TYPE='unofficial'
build_build_var_cache

make clean

croot
breakfast h870

# if you don't have generate signin keys for your builds, comment the line below...
mka target-files-package otatools

# ... and uncomment this two lines
# croot
# brunch h870

# if 'brunch' give you warnings or error, try this commands :
#> lunch lineage_h870-debug
#> mka bacon -j4
