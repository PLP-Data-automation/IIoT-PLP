@ echo [1mInitializing installation[0m

:: Checking Python installed
@ echo [7m1. Checking for Python in PATH[0m
@ python --version
@ if errorlevel 1 goto NoPythonEvent
@ echo [92mPython is OK[0m

:: Checking Pip installed
@ echo [7m2. Checking for pip in Python[0m
@ python -m pip --version
@ if errorlevel 1 goto NoPipEvent
@ echo [92mPIP is OK[0m

:: Upgrade pip
@ echo [7m3. Upgrading pip[0m
@ python -m pip install --upgrade pip
@ if errorlevel 1 goto NoPipUpgrade
@ echo [92mPip upgraded[0m

:: Installing wheel
@ echo [7m4. Installing Wheel[0m
@ python -m pip install wheel
@ if errorlevel 1 goto NoWheelEvent
@ echo [92mWheel installed[0m

:: Installing IIoT-Package
@ echo [7m4. Installing IIoT-PLP package[0m
@ python -m pip install .
@ if errorlevel 1 goto NoModuleEvent
@ echo [92mIIoT-PLP installed[0m

@ echo [102;97mINSTLLATION SUCCESS![0m

@ goto End

:NoPythonEvent
@ echo [91mError: Python is not available in the PATH[0m
@ goto End

:NoPipEvent
@ echo [91mError: Pip is not installed in the Python[0m
@ goto End

:NoPipUpgrade
@ echo [91mError: Pip could not be upgraded - Connection required[0m
@ goto End

:NoWheelEvent
@ echo [91mError: Pip could not install Wheel - Connection required[0m
@ goto End

:NoModuleEvent
@ echo [91mError: IIoT-PLP could not be installed[0m
@ goto End

:End
@pause