#!/bin/bash
set -e

ASDF_VERSION=${ASDF_VERSION:-"0.18.0"}

sudo wget https://github.com/asdf-vm/asdf/releases/download/v$ASDF_VERSION/asdf-v$ASDF_VERSION-linux-arm64.tar.gz
sudo tar -xzf asdf-v$ASDF_VERSION-linux-arm64.tar.gz -C /usr/local/bin
sudo rm asdf-v$ASDF_VERSION-linux-arm64.tar.gz
echo 'export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"' >> ~/.bashrc

export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"
