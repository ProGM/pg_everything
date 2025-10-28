#!/bin/bash
set -e

ASDF_VERSION=${ASDF_VERSION:-"0.18.0"}

ARCH=$(uname -m)
case $ARCH in
    x86_64|amd64)
        ASDF_ARCH="linux-amd64"
        ;;
    aarch64|arm64)
        ASDF_ARCH="linux-arm64"
        ;;
    *)
        echo "Unsupported architecture: $ARCH"
        exit 1
        ;;
esac

echo "Installing ASDF version $VERSION for $ASDF_ARCH..."

sudo wget https://github.com/asdf-vm/asdf/releases/download/v$ASDF_VERSION/asdf-v$ASDF_VERSION-$ASDF_ARCH.tar.gz
sudo tar -xzf asdf-v$ASDF_VERSION-$ASDF_ARCH.tar.gz -C /usr/local/bin
sudo rm asdf-v$ASDF_VERSION-$ASDF_ARCH.tar.gz
echo 'export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"' >> ~/.bashrc

export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"
