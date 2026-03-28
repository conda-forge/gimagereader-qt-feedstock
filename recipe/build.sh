#!/usr/bin/env bash

set -o xtrace -o nounset -o pipefail -o errexit

cmake -B build -S ${SRC_DIR} -G Ninja \
      -DINTERFACE_TYPE=qt6 \
      ${CMAKE_ARGS}
cmake --build build -- -j${CPU_COUNT}
cmake --install build
