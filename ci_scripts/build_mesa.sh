#!/bin/bash

mkdir /tmp/build_mesa
cd /tmp/build_mesa

git clone /git/mesa

mkdir mesa-build
cd mesa-build

export PATH="/build/bin:$PATH"
export PKG_CONFIG_PATH="/usr/local/lib/pkgconfig:/usr/lib/pkgconfig"
meson --buildtype release --prefix "/usr/local"  -Dplatforms=drm,x11 -Ddri-drivers= -Dvulkan-drivers=amd -Dgallium-drivers=radeonsi ../mesa
ninja
ninja install


cd /
rm -Rf /tmp/build_mesa

