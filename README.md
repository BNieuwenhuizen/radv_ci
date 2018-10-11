ci scripts to create a container to build radv & vulkan cts,
as well as scripts to actually build them.

To generate the container:

    bash build_container.sh ${DIR?}

To build:

    systemd-nspawn -D ${DIR?} --read-only --bind-ro '${GIT_DIR?}:/git' --bind ${DST_DIR}:/usr/local /usr/bin/build.sh


This assumes GIT_DIR is a directory containing repos for drm, mesa, LLVM, Vulkan-Headers, Vulkan-Loader, VK-GL-CTS and cts_runner.

