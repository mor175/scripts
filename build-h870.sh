#!/bin/bash
source scripts/sync-h870.sh

source build/envsetup.sh
make clean

brunch h870
