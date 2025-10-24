#!/bin/sh
set -e
export PATH="$(pwd)/node_modules/.bin:$PATH" && \
emcmake cmake -S ../.. -B ../../build && \
cmake --build ../../build && \
emcmake cmake -S .. -B package/build && \
cmake --build package/build
