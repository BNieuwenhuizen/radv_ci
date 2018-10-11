#!/bin/bash

mkdir /tmp/build_vulkan_cts
cd /tmp/build_vulkan_cts

git clone /git/VK-GL-CTS
cd VK-GL-CTS/external
python fetch_sources.py
cd ../../

mkdir build
cd build

cmake -GNinja -DCMAKE_BUILD_TYPE:STRING=Release -DCMAKE_INSTALL_LIBDIR:STRING=lib -DPYTHON_EXECUTABLE=/usr/bin/python2 ../VK-GL-CTS
ninja
ninja install

mkdir -p /usr/local/cts
cp external/vulkancts/modules/vulkan/deqp-vk /usr/local/cts/
cp -R external/vulkancts/modules/vulkan/vulkan /usr/local/cts/
cp ../VK-GL-CTS/external/vulkancts/mustpass/1.1.3/vk-default.txt  /usr/local/cts/



cd /
rm -Rf /tmp/build_vulkan_cts

