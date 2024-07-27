@echo off
setlocal

:: Configuration
set OPENCV_VERSION=4.10.0
set OPENCV_SOURCE_DIR=C:\Projects\opencv
set OPENCV_CONTRIB_DIR=C:\Projects\opencv_contrib
set BUILD_DIR=%OPENCV_SOURCE_DIR%\build
set CMAKE_GENERATOR="Visual Studio 17 2022"
set BUILD_TYPE=Release
set MSBUILD_PATH="C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Visual Studio 2022"

:: Clone OpenCV repository (if not already cloned)
if not exist "%OPENCV_SOURCE_DIR%\.git" (
    git clone https://github.com/opencv/opencv.git "%OPENCV_SOURCE_DIR%"
)

:: Clone OpenCV contrib repository (if not already cloned)
if not exist "%OPENCV_CONTRIB_DIR%\.git" (
    git clone https://github.com/opencv/opencv_contrib.git "%OPENCV_CONTRIB_DIR%"
)

:: Create and navigate to build directory
if not exist "%BUILD_DIR%" mkdir "%BUILD_DIR%"
cd "%BUILD_DIR%"

:: Run CMake to configure the project with contrib modules
cmake -G %CMAKE_GENERATOR% -A x64 -DCMAKE_BUILD_TYPE=%BUILD_TYPE% -DOPENCV_EXTRA_MODULES_PATH=%OPENCV_CONTRIB_DIR%\modules "%OPENCV_SOURCE_DIR%"

:: Build OpenCV using MSBuild
"%MSBUILD_PATH%" OpenCV.sln /p:Configuration=%BUILD_TYPE%

:: Finish
echo Build completed!
endlocal
pause
