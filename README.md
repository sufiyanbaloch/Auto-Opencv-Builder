```markdown
# OpenCV Build Script with Contrib Modules

This repository contains a batch script to automate the process of building OpenCV with contrib modules using CMake and Visual Studio 2022.

## Prerequisites

Before running the script, ensure you have the following installed and configured on your system:

1. **Git**: Used to clone the OpenCV and OpenCV contrib repositories.
   - [Download Git](https://git-scm.com/downloads)
   - Ensure Git is added to your system's PATH.
   
2. **CMake**: Used to configure the build process.
   - [Download CMake](https://cmake.org/download/)
   - Ensure CMake is added to your system's PATH.
   
3. **Visual Studio 2022**: Needed for compiling OpenCV.
   - [Download Visual Studio 2022](https://visualstudio.microsoft.com/vs/)
   - Ensure you have the "Desktop development with C++" workload installed.
   - Verify the path to `MSBuild.exe` matches your installation.

## Configuration

The script contains several configuration variables that you may need to adjust according to your environment:

- `OPENCV_VERSION`: The version of OpenCV to build (e.g., 4.10.0).
- `OPENCV_SOURCE_DIR`: Directory where the OpenCV source will be cloned (default is `C:\Projects\opencv`).
- `OPENCV_CONTRIB_DIR`: Directory where the OpenCV contrib modules source will be cloned (default is `C:\Projects\opencv_contrib`).
- `BUILD_DIR`: Directory where the build files will be generated (default is `C:\Projects\opencv\build`).
- `CMAKE_GENERATOR`: The CMake generator to use (default is "Visual Studio 17 2022").
- `BUILD_TYPE`: The build type (e.g., Release or Debug).
- `MSBUILD_PATH`: Path to `MSBuild.exe` (default is `C:\Program Files (x86)\Microsoft Visual Studio\2022\Community\MSBuild\Current\Bin\MSBuild.exe`).

## Usage

1. **Clone this repository** or copy the script into your project directory.
2. **Open a Command Prompt** and navigate to the directory containing the script.
3. **Run the script** by executing the following command:
   ```bash
   build_opencv.bat
   ```

The script will perform the following steps:
1. Clone the OpenCV repository if it is not already cloned.
2. Clone the OpenCV contrib repository if it is not already cloned.
3. Create the build directory if it does not exist.
4. Run CMake to configure the project, including the contrib modules.
5. Use MSBuild to build OpenCV.

## Troubleshooting

If you encounter any issues, consider the following troubleshooting steps:

- **Verify Path Variables**: Ensure `OPENCV_SOURCE_DIR`, `OPENCV_CONTRIB_DIR`, and `BUILD_DIR` are correct and have appropriate permissions.
- **Check MSBuild Path**: The path for `MSBUILD_PATH` may vary depending on your Visual Studio installation. Verify it points to the correct `MSBuild.exe`.
- **CMake Configuration**: Ensure that CMake and Visual Studio are correctly installed and available in the system's PATH.
- **Visual Studio Version**: Ensure the CMake generator and version specified match the installed version of Visual Studio.
- **Internet Connection**: Ensure you have a stable internet connection for cloning the repositories.

## License

This project is licensed under the MIT License.

## Contributing

Contributions are welcome! Please submit pull requests or issues if you encounter any problems or have suggestions for improvements.

## Acknowledgements

- [OpenCV](https://opencv.org/)
- [OpenCV Contrib](https://github.com/opencv/opencv_contrib)
- [CMake](https://cmake.org/)
- [Visual Studio](https://visualstudio.microsoft.com/)

## Contact

For any questions or issues, make a issue req on tab.
```
