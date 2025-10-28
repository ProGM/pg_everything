#!/bin/bash
set -e

VERSION=${VERSION:-"17"}

echo "Setting up PostgreSQL..."

sudo apt update

sudo apt install -y postgresql-common
cat <(echo "\n") | sudo /usr/share/postgresql-common/pgdg/apt.postgresql.org.sh

sudo apt update
sudo apt install -y postgresql-$VERSION postgresql-client-$VERSION libpq-dev postgresql-server-dev-$VERSION postgresql-$VERSION-postgis-3 postgresql-$VERSION-postgis-3-scripts

# Install PostGIS and other dependencies
sudo apt-get install -y \
    build-essential \
    git \
    pkg-config \
    libicu-dev \
    libreadline-dev \
    uuid-dev \
    bison \
    flex \
    cmake \
    curl \
    wget
