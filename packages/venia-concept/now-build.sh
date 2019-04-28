#!/bin/bash -xe

# Create .env file from template so Venia will build
cp .env.dist .env

# navigate to monorepo root
cd ../../

# run general purpose libvips installer
bash ./scripts/libvips-installer.sh

# yarn install --force
yarn run build
