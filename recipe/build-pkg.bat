@echo on

cd %SRC_DIR%\python
%PYTHON% -m pip install --no-deps --no-build-isolation -v .
IF %ERRORLEVEL% NEQ 0 exit 1

:: generated by setup.py
rmdir build /s /q
