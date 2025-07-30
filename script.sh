#!/usr/bin/env bash

# Use your manifest & trees
rm -rf .repo/local_manifests
git clone https://github.com/YOUR_USERNAME/local_manifest.git --depth=1 .repo/local_manifests

repo init -u https://github.com/Evolution-X/manifest -b vic --git-lfs
/opt/crave/resync.sh

. build/envsetup.sh
lunch lineage_duchamp-bp1a-userdebug
m evolution
