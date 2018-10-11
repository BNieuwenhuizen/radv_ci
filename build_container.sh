DIR=$1

mkdir ${DIR?}
pacstrap  -c ${DIR?} base base-devel meson git libpciaccess cmake python-mako  libx11 wayland libxrandr libpng python2 libxshmfence libxdamage boost
mkdir ${DIR?}/git

# Kinda hacky
cp ci_scripts/* ${DIR?}/usr/bin/
