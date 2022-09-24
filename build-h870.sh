#!/bin/bash
source scripts/sync-h870.sh

source build/envsetup.sh

source scripts/fixes.sh

make clean

brunch h870
