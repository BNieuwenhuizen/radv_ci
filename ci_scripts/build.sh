#!/bin/bash

/usr/bin/build_vulkan_headers.sh
/usr/bin/build_vulkan_loader.sh
/usr/bin/build_drm.sh
/usr/bin/build_llvm.sh
/usr/bin/build_mesa.sh
/usr/bin/build_vulkan_cts.sh
/usr/bin/build_cts_runner.sh

#tar -cvpf /archives/build.tar /build
