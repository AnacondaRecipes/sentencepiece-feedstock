@echo on

if exist "%SRC_DIR%\build" rmdir "%SRC_DIR%\build" /s /q

cmake -S "%SRC_DIR%" -B "%SRC_DIR%\build" ^
  -G "Ninja" ^
  -DCMAKE_INSTALL_PREFIX="%SRC_DIR%\build\root" ^
  -DCMAKE_BUILD_TYPE=Release ^
  -DSPM_ENABLE_SHARED=OFF ^
  -DSPM_ABSL_PROVIDER=package ^
  -DSPM_PROTOBUF_PROVIDER=package
IF %ERRORLEVEL% NEQ 0 exit 1

cmake --build "%SRC_DIR%\build" --config Release --target install --parallel %CPU_COUNT%
IF %ERRORLEVEL% NEQ 0 exit 1

:: same ABI-consistency fix as Unix — see build-pkg.sh for the full explanation
copy /Y "%SRC_DIR%\build\src\sentencepiece.pb.h" "%SRC_DIR%\src\builtin_pb\sentencepiece.pb.h"
copy /Y "%SRC_DIR%\build\src\sentencepiece_model.pb.h" "%SRC_DIR%\src\builtin_pb\sentencepiece_model.pb.h"

cd %SRC_DIR%\python
%PYTHON% -m pip install --no-deps --no-build-isolation -v .
IF %ERRORLEVEL% NEQ 0 exit 1

if exist "%SRC_DIR%\build" rmdir "%SRC_DIR%\build" /s /q