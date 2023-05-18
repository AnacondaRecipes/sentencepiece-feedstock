mkdir build
cd build

if [[ "${target_platform}" == linux-* ]]; then

    export LD_LIBRARY_PATH=${PREFIX}/lib
    export CPATH=${PREFIX}/include
    export INCLUDE=${PREFIX}/include
    export LIBRARY_PATH=${PREFIX}/lib

    cmake \
        -DCMAKE_INSTALL_PREFIX=$PREFIX \
        -DCMAKE_INSTALL_LIBDIR=$PREFIX/lib \
        -DCMAKE_AR="${AR}" \
        -DSPM_ENABLE_TCMALLOC=OFF \
        -DSPM_ENABLE_SHARED=ON \
        -S ..

elif [[ "${target_platform}" == osx-* ]]; then

    cmake .. -DSPM_ENABLE_SHARED=ON -DCMAKE_INSTALL_PREFIX=../..
    
fi

make -j ${CPU_COUNT}
make install

if [[ "${target_platform}" == linux-* ]]; then
    ldconfig -v -N
fi

cd $SRC_DIR/python
${PYTHON} setup.py build
${PYTHON} -m pip install . --no-deps --no-build-isolation
