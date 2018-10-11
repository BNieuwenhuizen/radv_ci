#!/bin/bash

mkdir /tmp/build_drm
cd /tmp/build_drm

git clone /git/drm

mkdir drm-build
cd drm-build

meson ../drm --buildtype release --prefix=/usr/local
ninja 


ninja install

cd /
rm -Rf /tmp/build_drm

