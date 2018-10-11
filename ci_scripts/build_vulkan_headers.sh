#!/bin/bash

mkdir /tmp/build_vulkan_headers
cd /tmp/build_vulkan_headers

git clone /git/Vulkan-Headers


mkdir build
cd build

cmake -GNinja -DCMAKE_BUILD_TYPE:STRING=Release ../Vulkan-Headers
ninja
ninja install


cd /
rm -Rf /tmp/build_vulkan_headers

