# /e/OS (https://e.foundation/)
Scripts for LG G6 H870 (EU unlocked) for building of /e/OS on Linux

This files are inspired by them from BernardoBas (https://github.com/LG-G6), many thanks to him.
------------------------------------------------------------------------------------------------

To initialize your local repository, use this ninja command:

```Shell
mkdir eOS && cd eOS && git clone https://github.com/mor175/scripts.git -b v1-r && repo init -u https://gitlab.e.foundation/e/os/android.git -b v1-r && export USE_CCACHE=1 && export CCACHE_EXEC=/usr/bin/ccache && ccache -M 50G && mkdir .repo/local_manifests && cp scripts/roomservice-h870.xml .repo/local_manifests/ && mv .repo/local_manifests/roomservice-h870.xml .repo/local_manifests/roomservice.xml && . scripts/sync-h870.sh && make clean
```
