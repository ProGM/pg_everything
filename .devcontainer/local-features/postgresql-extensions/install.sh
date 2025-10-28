#!/bin/bash
set -e

VERSION=${VERSION:-"17"}
RUST_VERSION=${RUST_VERSION:-"1.90.0"}

echo "Setting up PostgreSQL..."

sudo apt-get update
sudo apt-get -y install python3-dev python3-setuptools python3-wheel

sudo apt-get install -y \
  libuv1-dev \
  libwslay-dev \
  libbrotli-dev \
  libcap-dev \
  pkg-config

###########################
# Install PostGIS extension
###########################
echo "Installing PostGIS..."
sudo apt-get install -y postgis postgresql-$VERSION-postgis-3

###########################################
# Install PL/Python and pgvector extensions
###########################################
echo "Installing PL/Python and pgvector..."
sudo apt-get install -y postgresql-plpython3-$VERSION postgresql-$VERSION-pgvector

export PATH="/usr/lib/postgresql/$VERSION/bin:$PATH"
export PG_CONFIG=/usr/lib/postgresql/$VERSION/bin/pg_config

#########################
# Install pgjwt extension
#########################
echo "Installing pgjwt..."
cd /tmp
git clone https://github.com/michelp/pgjwt.git || true
cd pgjwt
make install

##############################
# Install omni_httpd extension
##############################
echo "Installing omni_httpd..."
cd /tmp
git clone https://github.com/omnigres/omnigres.git || true
cd omnigres

sudo apt-get install -y cmake build-essential flex bison pkg-config \
    libssl-dev libreadline-dev zlib1g-dev python3-venv python3-pip \
    netcat-openbsd

cmake -S . -B build \
  -DPostgreSQL_USE_DOWNLOAD=OFF \
  -DPostgreSQL_ROOT=/usr/lib/postgresql/$VERSION \
  -DPG_CONFIG=/usr/lib/postgresql/$VERSION/bin/pg_config \
  -DOMNIGRES_EXCLUDE="omni_python"

cmake --build build --parallel
cmake --build build --parallel --target install_extensions

PKGLIBDIR="$(pg_config --pkglibdir)"   # likely /usr/lib/postgresql/17/lib
cd "$PKGLIBDIR"
sudo ln -s omni_httpd--0.4.11.so omni_httpd.so
sudo ln -s omni--0.2.14.so omni.so
sudo chown root:root omni_httpd.so
sudo chmod 0644 omni_httpd.so

##############################
# Install pg_graphql extension
##############################
sudo chmod -R 777 /usr/lib/postgresql/17
sudo chmod -R 777 /usr/share/postgresql/17

echo "Installing pg_graphql..."
mkdir -p /tmp/extensions
cd /tmp/extensions
git clone https://github.com/supabase/pg_graphql.git || true
cd pg_graphql

asdf plugin add rust || true
asdf install rust $RUST_VERSION
asdf reshim
asdf set rust $RUST_VERSION

export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"

echo $PATH
echo $ASDF_DATA_DIR

cargo install --locked cargo-pgrx@0.16.0
cargo pgrx init --pg17=download
cargo pgrx install --release

echo "PostgreSQL setup complete."
