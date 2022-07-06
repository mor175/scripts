# /e/OS (https://e.foundation/)

### This files are inspired by them from https://github.com/LG-G6, many thanks to Bernardo Bas.

This scripts are only for LG G6 H870 variant (EU) to build /e/OS on Linux.

**Tested on Ubuntu 22.04 LTS**

To initialize your local repository, use this ninja command:

```Shell
mkdir eOS && cd eOS && git clone https://github.com/mor175/scripts.git -b v1-r && repo init -u https://gitlab.e.foundation/e/os/android.git -b v1-r --depth=1 && export USE_CCACHE=1 && export CCACHE_EXEC=/usr/bin/ccache && ccache -M 50G && mkdir .repo/local_manifests && cp scripts/roomservice-h870.xml .repo/local_manifests/ && mv .repo/local_manifests/roomservice-h870.xml .repo/local_manifests/roomservice.xml
```

To build /e/OS:

```Shell
source scripts/build-h870.sh
```
