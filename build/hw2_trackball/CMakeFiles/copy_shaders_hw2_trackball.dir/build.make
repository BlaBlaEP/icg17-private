# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.6

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/Users/cyrilwendl/Documents/EPFL/Introduction to Computer Graphics/icg17"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/Users/cyrilwendl/Documents/EPFL/Introduction to Computer Graphics/icg17/build"

# Utility rule file for copy_shaders_hw2_trackball.

# Include the progress variables for this target.
include hw2_trackball/CMakeFiles/copy_shaders_hw2_trackball.dir/progress.make

copy_shaders_hw2_trackball: hw2_trackball/CMakeFiles/copy_shaders_hw2_trackball.dir/build.make
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Copying /Users/cyrilwendl/Documents/EPFL/Introduction to Computer Graphics/icg17/hw2_trackball/cube/cube_vshader.glsl to build folder"
	cd "/Users/cyrilwendl/Documents/EPFL/Introduction to Computer Graphics/icg17/build/hw2_trackball" && /Applications/CLion.app/Contents/bin/cmake/bin/cmake -E copy /Users/cyrilwendl/Documents/EPFL/Introduction\ to\ Computer\ Graphics/icg17/hw2_trackball/cube/cube_vshader.glsl /Users/cyrilwendl/Documents/EPFL/Introduction\ to\ Computer\ Graphics/icg17/build/hw2_trackball
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Copying /Users/cyrilwendl/Documents/EPFL/Introduction to Computer Graphics/icg17/hw2_trackball/cube/cube_fshader.glsl to build folder"
	cd "/Users/cyrilwendl/Documents/EPFL/Introduction to Computer Graphics/icg17/build/hw2_trackball" && /Applications/CLion.app/Contents/bin/cmake/bin/cmake -E copy /Users/cyrilwendl/Documents/EPFL/Introduction\ to\ Computer\ Graphics/icg17/hw2_trackball/cube/cube_fshader.glsl /Users/cyrilwendl/Documents/EPFL/Introduction\ to\ Computer\ Graphics/icg17/build/hw2_trackball
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Copying /Users/cyrilwendl/Documents/EPFL/Introduction to Computer Graphics/icg17/hw2_trackball/grid/grid_vshader.glsl to build folder"
	cd "/Users/cyrilwendl/Documents/EPFL/Introduction to Computer Graphics/icg17/build/hw2_trackball" && /Applications/CLion.app/Contents/bin/cmake/bin/cmake -E copy /Users/cyrilwendl/Documents/EPFL/Introduction\ to\ Computer\ Graphics/icg17/hw2_trackball/grid/grid_vshader.glsl /Users/cyrilwendl/Documents/EPFL/Introduction\ to\ Computer\ Graphics/icg17/build/hw2_trackball
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Copying /Users/cyrilwendl/Documents/EPFL/Introduction to Computer Graphics/icg17/hw2_trackball/grid/grid_fshader.glsl to build folder"
	cd "/Users/cyrilwendl/Documents/EPFL/Introduction to Computer Graphics/icg17/build/hw2_trackball" && /Applications/CLion.app/Contents/bin/cmake/bin/cmake -E copy /Users/cyrilwendl/Documents/EPFL/Introduction\ to\ Computer\ Graphics/icg17/hw2_trackball/grid/grid_fshader.glsl /Users/cyrilwendl/Documents/EPFL/Introduction\ to\ Computer\ Graphics/icg17/build/hw2_trackball
.PHONY : copy_shaders_hw2_trackball

# Rule to build all files generated by this target.
hw2_trackball/CMakeFiles/copy_shaders_hw2_trackball.dir/build: copy_shaders_hw2_trackball

.PHONY : hw2_trackball/CMakeFiles/copy_shaders_hw2_trackball.dir/build

hw2_trackball/CMakeFiles/copy_shaders_hw2_trackball.dir/clean:
	cd "/Users/cyrilwendl/Documents/EPFL/Introduction to Computer Graphics/icg17/build/hw2_trackball" && $(CMAKE_COMMAND) -P CMakeFiles/copy_shaders_hw2_trackball.dir/cmake_clean.cmake
.PHONY : hw2_trackball/CMakeFiles/copy_shaders_hw2_trackball.dir/clean

hw2_trackball/CMakeFiles/copy_shaders_hw2_trackball.dir/depend:
	cd "/Users/cyrilwendl/Documents/EPFL/Introduction to Computer Graphics/icg17/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/cyrilwendl/Documents/EPFL/Introduction to Computer Graphics/icg17" "/Users/cyrilwendl/Documents/EPFL/Introduction to Computer Graphics/icg17/hw2_trackball" "/Users/cyrilwendl/Documents/EPFL/Introduction to Computer Graphics/icg17/build" "/Users/cyrilwendl/Documents/EPFL/Introduction to Computer Graphics/icg17/build/hw2_trackball" "/Users/cyrilwendl/Documents/EPFL/Introduction to Computer Graphics/icg17/build/hw2_trackball/CMakeFiles/copy_shaders_hw2_trackball.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : hw2_trackball/CMakeFiles/copy_shaders_hw2_trackball.dir/depend

