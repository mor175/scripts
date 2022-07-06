#!/bin/bash

# Cam fix for LG G6
cd frameworks/base/
git fetch https://github.com/LG-G6/android_frameworks_base.git lineage-18.1
git cherry-pick 08284b856f1fc64f8695daefcd0f4e75fdba1219 048c46b54c8fd7ea76db12abb5cbefde76f6b38c
cd ../../

# Fix for LG G6 TCP errors
cd packages/modules/NetworkStack/
git fetch https://github.com/LG-G6/android_packages_modules_NetworkStack.git lineage-18.1
git cherry-pick 7328ceca4be36c10dc95a7075e7dde412a0781e0
cd ../../../
