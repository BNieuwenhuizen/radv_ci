#!/bin/bash

mkdir /tmp/build_vulkan_loader
cd /tmp/build_vulkan_loader

git clone /git/Vulkan-Loader


mkdir build
cd build

cmake -GNinja -DCMAKE_BUILD_TYPE:STRING=Release -DCMAKE_INSTALL_LIBDIR:STRING=lib ../Vulkan-Loader
ninja
ninja install


cd /
rm -Rf /tmp/build_vulkan_loader

