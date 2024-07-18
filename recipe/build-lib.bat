@echo on

mkdir build
cd build

cmake -G "Ninja" ^
    -DCMAKE_BUILD_TYPE=Release ^
    -DCMAKE_PREFIX_PATH=%LIBRARY_PREFIX%;%LIBRARY_BIN%;%LIBRARY_LIB% ^
    -DCMAKE_INCLUDE_PATH=%LIBRARY_INC% ^
    -DCMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX% ^
    -Dprotobuf_BUILD_SHARED_LIBS=ON ^
    -DSPM_ENABLE_SHARED=ON ^
    -DSPM_ABSL_PROVIDER="package" ^
    -DSPM_PROTOBUF_PROVIDER="package" ^
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
