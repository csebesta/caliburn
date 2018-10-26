#!/bin/bash
# Build script
# Changes skeleton during build process
# Add hook in auto/build

# Define installed packages
echo "Writing package list..."
cat > config/package-lists/caliburn.list.chroot << EOF
#-----------------------------------------------------------------------
# Essentials
alsa-utils
coreutils

# Slide dependencies
feh
fonts-liberation2
git
graphicsmagick
stow
xmobar
xmonad
xorg
xterm

#-----------------------------------------------------------------------
# Useful utilities
info
parted
surf
vim
EOF

# Configure slide
git clone https://github.com/csebesta/slide \
config/common/includes.chroot/root/.slide
#&& cd config/common/includes.chroot/root/.slide

# Blacklist pcspkr module
mkdir -p config/common/includes.chroot/etc/modprobe.d && \
cat > config/common/includes.chroot/etc/modprobe.d/nobeep.conf << 'EOF'
blacklist pcspkr
EOF
