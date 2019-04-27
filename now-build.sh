#!/bin/bash -xe

cp packages/venia-concept/.env.dist packages/venia-concept/.env
SHARP_IGNORE_GLOBAL_LIBVIPS=1 yarn install
yarn run build
