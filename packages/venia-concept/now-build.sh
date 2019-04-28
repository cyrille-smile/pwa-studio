#!/bin/bash -xe

# Create .env file from template so Venia will build
cp .env.dist .env

# navigate to monorepo root
cd ../../

# run general purpose libvips installer
# bash ./scripts/libvips-installer.sh

# get libvips
# curl -OL https://github.com/lovell/sharp-libvips/releases/download/v8.7.4/libvips-8.7.4-linuxmusl-x64.tar.gz

SHARP_IGNORE_GLOBAL_LIBVIPS=1 yarn install --verbose
ls -lR node_modules/sharp/vendor/lib
yarn run build
