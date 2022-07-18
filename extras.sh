#!/bin/bash

# repopick -t R_asb_2022-07
# cd build/make/core/ && sed -i 's/2022-06-05/2022-07-05/g' version_defaults.mk  && cd ../../../

# microG support
cd frameworks/base/
git cherry-pick f93240a9fe3e74e252e6e69db6993bee751a3515
cd ../../

# Charging animation
cd frameworks/base/
git cherry-pick 16be597d1893c3865a910d8926ab2a42424534c0
cd ../../

# PixelProps
cd frameworks/base/
git cherry-pick bdf722ffadd92ed4ef8b89fcd9e3b7338da1217b 315e6da47ee13856117ae0e7cb40fc8aa301e2bb 5a3d49d2801b6f216dda611ee5c0b5078c11e9ef c322ce30871d4b1ccde293c7e105db9ab4bef966 09d8dccc5f35543da84f4e03c26cf7091ca42788
cd ../../
