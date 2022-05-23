@ echo [1mRunning installation checker[0m

:: Checking Python installed.
@ echo [7m1. Checking for Python in PATH[0m
@ python --version
@ if errorlevel 1 goto NoPythonEvent
@ echo [92mPython is OK[0m

:: Checking Pip installed.
@ echo [7m2. Checking for pip in Python[0m
@ python -m pip --version
@ if errorlevel 1 goto NoPipEvent
@ echo [92mPIP is OK[0m

:: Checking IIoT-PLP module installed.
@ echo [7m3. Checking for IIoT-PLP module[0m
@ python -m pip list | findstr IIoT-PLP
@ if errorlevel 1 goto NoModuleEvent
@ echo [92mIIoT-PLP is OK[0m

@ echo [102;97mCHECKER SUCCESS![0m

@ goto End

:NoPythonEvent
@ echo [91mError: Python is not available in the PATH[0m
@ goto End

:NoPipEvent
@ echo [91mError: Pip is not installed in the Python[0m
@ goto End

:NoModuleEvent
@ echo [91mError: IIoT-PLP module has not been installed[0m
@ goto End

:End
@pause