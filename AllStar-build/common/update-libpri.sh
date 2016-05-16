#! /bin/bash
# Patch and build Libpri for All Star

# Script Start
cd /usr/src/utils/astsrc/libpri/
echo "Building libpri..."
# Patch libpri for use with AllStar
patch </usr/src/utils/AllStar-build/patches/patch-libpri-makefile
# Build and install libpri
make
make install
cp /usr/src/utils/AllStar-build/common/dahdi /etc/init.d
update-rc.d dahdi defaults
systemctl daemon-reload
systemctl start dahdi
echo "Done"