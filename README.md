# /e/OS (https://e.foundation/)

This scripts are ONLY for LG G6, H870 variant (EU) with bootloader unlocked by offcial method (https://doc.e.foundation/devices/h870).

For instructions on how to build by this method, as e/OS/ is based on LineageOS, you can refer to the LineageOS Wiki (https://wiki.lineageos.org/devices/h870/build/).

** Tested on Zorin-OS-18.1 (Ubuntu 24.04 LTS) **

To initialize your local repository, use this ninja command:

```Shell
mkdir eOS_build && cd eOS_build && git clone https://github.com/mor175/scripts.git -b v4.x-a15 && repo init -u https://gitlab.e.foundation/e/os/android.git -b v4.2-a15 --git-lfs --depth=1 && export USE_CCACHE=1 && export CCACHE_EXEC=/usr/bin/ccache && ccache -M 50G && ccache -o compression=true && mkdir .repo/local_manifests && cp scripts/roomservice-h870.xml .repo/local_manifests/ && mv .repo/local_manifests/roomservice-h870.xml .repo/local_manifests/roomservice.xml
```

To build /e/OS:

```Shell
source scripts/sync-h870.sh

source scripts/build-h870.sh
```

** Special Notes : **

On Ubuntu based distro, instead of download and install "platform-tools-latest-linux.zip", you could do this :
```Shell
sudo apt-get install adb fastboot
```

You may need also add this packages : python-is-python3 git-lfs


JAVA : it's not necessary to install OpenJDK (included in source download)
