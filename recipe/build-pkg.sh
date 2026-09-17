#!/bin/bash
set -ex

# start clean every time — avoids stale CMakeCache.txt / leftover object
# files from a prior failed attempt causing confusing, unrelated errors later
rm -rf "$SRC_DIR/build"

cmake -S "$SRC_DIR" -B "$SRC_DIR/build" \
  -DCMAKE_INSTALL_PREFIX="$SRC_DIR/build/root" \
  -DCMAKE_BUILD_TYPE=Release \
  -DSPM_ENABLE_SHARED=OFF \
  -DSPM_ABSL_PROVIDER=package \
  -GNinja
cmake --build "$SRC_DIR/build" --target install

cd "$SRC_DIR/python"
$PYTHON -m pip install --no-deps --no-build-isolation -vv .

rm -rf "$SRC_DIR/build"