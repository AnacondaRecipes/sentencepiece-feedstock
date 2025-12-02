@echo on

mkdir build
cd build

cmake -G "Ninja" ^
    -DCMAKE_BUILD_TYPE=Release ^
    -DCMAKE_PREFIX_PATH=%LIBRARY_PREFIX%;%LIBRARY_BIN%;%LIBRARY_LIB% ^
    -DCMAKE_INCLUDE_PATH=%LIBRARY_INC% ^
    -DCMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX% ^
    -DSPM_ENABLE_SHARED=ON ^
    -DSPM_ENABLE_TCMALLOC=OFF ^
    -DSPM_ABSL_PROVIDER="package" ^
    -DSPM_PROTOBUF_PROVIDER="package" ^
    -DCMAKE_POLICY_VERSION_MINIMUM=3.5 ^
    ..
IF %ERRORLEVEL% NEQ 0 exit 1

cmake --build . --config Release --target install
IF %ERRORLEVEL% NEQ 0 exit 1

if [%PKG_NAME%] == [libsentencepiece] (
    del /s /q %LIBRARY_BIN%\spm_*
)

:: clean up for rerun
cd ..
rd /s /q build
