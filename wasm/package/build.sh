#!/bin/sh
set -e
echo "--- Starting MuJoCo WASM Build & Prep ---"
export PATH="$(pwd)/node_modules/.bin:$PATH" && \
emcmake cmake -S .. -B ../build && \
cmake --build ../build && \
emcmake cmake -S . -B package/build && \
cmake --build package/build
echo "--- Build and Copy Complete ---"
