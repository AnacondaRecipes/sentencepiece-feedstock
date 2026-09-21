#!/bin/bash
set -ex

rm -rf "$SRC_DIR/build"

cmake -S "$SRC_DIR" -B "$SRC_DIR/build" \
  -DCMAKE_INSTALL_PREFIX="$PREFIX" \
  -DCMAKE_BUILD_TYPE=Release \
  -DSPM_ENABLE_SHARED=OFF \
  -DSPM_ABSL_PROVIDER=package \
  -GNinja
cmake --build "$SRC_DIR/build" --target install

export PKG_CONFIG_PATH="$PREFIX/lib/pkgconfig:$PKG_CONFIG_PATH"

cd "$SRC_DIR/python"
$PYTHON -m pip install --no-deps --no-build-isolation -vv .

rm -rf "$SRC_DIR/build"
