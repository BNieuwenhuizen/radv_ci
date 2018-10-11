#!/bin/bash

mkdir /tmp/build_cts_runner
cd /tmp/build_cts_runner

git clone /git/cts_runner
cd cts_runner

make
cp vulkan-cts-runner /usr/local/bin


cd /
rm -Rf /tmp/build_cts_runner

