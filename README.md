# /e/OS (https://e.foundation/)

### This files are inspired by them from https://github.com/LG-G6, many thanks to Bernardo Bas.

This scripts are only for LG G6 H870 variant (EU) to build /e/OS on Linux.

```diff
- WARNING : Still in development !
- Compiling work well, but some prebuilt APKs not working (Camera, MagicEarth)
```

**Tested on Ubuntu 22.04 LTS**

To initialize your local repository, use this ninja command:

```Shell
mkdir eOS && cd eOS && git clone https://github.com/mor175/scripts.git -b v1-r && repo init -u https://gitlab.e.foundation/e/os/android.git -b v1-r --depth=1 && export USE_CCACHE=1 && export CCACHE_EXEC=/usr/bin/ccache && ccache -M 50G && mkdir .repo/local_manifests && cp scripts/roomservice-h870.xml .repo/local_manifests/ && mv .repo/local_manifests/roomservice-h870.xml .repo/local_manifests/roomservice.xml
```

To build /e/OS:

```Shell
source scripts/build-h870.sh
```


**Ubuntu 22.04 LTS - Special Notes :**

Instead of download and install "platform-tools-latest-linux.zip", you could do this :
```Shell
sudo apt-get install adb fastboot
```

You may need also add this packages : cpu-checker python-is-python3 zram-config git-lfs

JAVA : v1-r is equivalent to LineageOS 18.1, so it's not necessary to install OpenJDK 11 (included in source download)

To fix "Can't locate Getopt/Std.pm in @INC", execute this :
```Shell
sudo perl -e shell -MCPAN
cpan>install CPAN
cpan>reload cpan
cpan>install Getopt::Std
cpan>exit
```
