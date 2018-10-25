#!/bin/bash
# Build script
# Changes skeleton during build process

# Blacklist pcspkr module
mkdir -p config/common/includes.chroot/etc/modprobe.d && \
cat > config/common/includes.chroot/etc/modprobe.d/nobeep.conf << 'EOF'
blacklist pcspkr
EOF

## Setup slide
#git clone https://github.com/csebesta/slide \
#config/common/includes.chroot/root/.slide \
#&& cd config/common/includes.chroot/root/.slide
