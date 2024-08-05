#!/bin/bash
set -ex

mkdir build
cd build

if [[ "${target_platform}" != "${build_platform}" ]]; then
    CMAKE_ARGS="${CMAKE_ARGS} -DProtobuf_PROTOC_EXECUTABLE=$BUILD_PREFIX/bin/protoc"
fi

cmake -G "Ninja" \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_INSTALL_PREFIX=$PREFIX \
    -DCMAKE_AR="${AR}" \
    -DSPM_ENABLE_SHARED=ON \
    -DSPM_ENABLE_TCMALLOC=OFF \
    -DSPM_ABSL_PROVIDER="package" \
    -DSPM_PROTOBUF_PROVIDER="package" \
    ${CMAKE_ARGS} \
    ..

cmake --build . --target install

if [[ "$PKG_NAME" == "libsentencepiece" ]]; then
    rm ${PREFIX}/bin/spm_*
fi

# clean up for rerun
cd ..
rm -rf build
