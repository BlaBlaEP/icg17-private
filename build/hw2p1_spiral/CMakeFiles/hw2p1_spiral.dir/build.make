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

# Include any dependencies generated for this target.
include hw2p1_spiral/CMakeFiles/hw2p1_spiral.dir/depend.make

# Include the progress variables for this target.
include hw2p1_spiral/CMakeFiles/hw2p1_spiral.dir/progress.make

# Include the compile flags for this target's objects.
include hw2p1_spiral/CMakeFiles/hw2p1_spiral.dir/flags.make

hw2p1_spiral/CMakeFiles/hw2p1_spiral.dir/main.cpp.o: hw2p1_spiral/CMakeFiles/hw2p1_spiral.dir/flags.make
hw2p1_spiral/CMakeFiles/hw2p1_spiral.dir/main.cpp.o: ../hw2p1_spiral/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/cyrilwendl/Documents/EPFL/Introduction to Computer Graphics/icg17/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object hw2p1_spiral/CMakeFiles/hw2p1_spiral.dir/main.cpp.o"
	cd "/Users/cyrilwendl/Documents/EPFL/Introduction to Computer Graphics/icg17/build/hw2p1_spiral" && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/hw2p1_spiral.dir/main.cpp.o -c "/Users/cyrilwendl/Documents/EPFL/Introduction to Computer Graphics/icg17/hw2p1_spiral/main.cpp"

hw2p1_spiral/CMakeFiles/hw2p1_spiral.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/hw2p1_spiral.dir/main.cpp.i"
	cd "/Users/cyrilwendl/Documents/EPFL/Introduction to Computer Graphics/icg17/build/hw2p1_spiral" && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/cyrilwendl/Documents/EPFL/Introduction to Computer Graphics/icg17/hw2p1_spiral/main.cpp" > CMakeFiles/hw2p1_spiral.dir/main.cpp.i

hw2p1_spiral/CMakeFiles/hw2p1_spiral.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/hw2p1_spiral.dir/main.cpp.s"
	cd "/Users/cyrilwendl/Documents/EPFL/Introduction to Computer Graphics/icg17/build/hw2p1_spiral" && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/cyrilwendl/Documents/EPFL/Introduction to Computer Graphics/icg17/hw2p1_spiral/main.cpp" -o CMakeFiles/hw2p1_spiral.dir/main.cpp.s

hw2p1_spiral/CMakeFiles/hw2p1_spiral.dir/main.cpp.o.requires:

.PHONY : hw2p1_spiral/CMakeFiles/hw2p1_spiral.dir/main.cpp.o.requires

hw2p1_spiral/CMakeFiles/hw2p1_spiral.dir/main.cpp.o.provides: hw2p1_spiral/CMakeFiles/hw2p1_spiral.dir/main.cpp.o.requires
	$(MAKE) -f hw2p1_spiral/CMakeFiles/hw2p1_spiral.dir/build.make hw2p1_spiral/CMakeFiles/hw2p1_spiral.dir/main.cpp.o.provides.build
.PHONY : hw2p1_spiral/CMakeFiles/hw2p1_spiral.dir/main.cpp.o.provides

hw2p1_spiral/CMakeFiles/hw2p1_spiral.dir/main.cpp.o.provides.build: hw2p1_spiral/CMakeFiles/hw2p1_spiral.dir/main.cpp.o


# Object files for target hw2p1_spiral
hw2p1_spiral_OBJECTS = \
"CMakeFiles/hw2p1_spiral.dir/main.cpp.o"

# External object files for target hw2p1_spiral
hw2p1_spiral_EXTERNAL_OBJECTS =

hw2p1_spiral/hw2p1_spiral: hw2p1_spiral/CMakeFiles/hw2p1_spiral.dir/main.cpp.o
hw2p1_spiral/hw2p1_spiral: hw2p1_spiral/CMakeFiles/hw2p1_spiral.dir/build.make
hw2p1_spiral/hw2p1_spiral: /usr/local/lib/libglfw.dylib
hw2p1_spiral/hw2p1_spiral: /usr/local/lib/libGLEW.dylib
hw2p1_spiral/hw2p1_spiral: hw2p1_spiral/CMakeFiles/hw2p1_spiral.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/Users/cyrilwendl/Documents/EPFL/Introduction to Computer Graphics/icg17/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable hw2p1_spiral"
	cd "/Users/cyrilwendl/Documents/EPFL/Introduction to Computer Graphics/icg17/build/hw2p1_spiral" && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/hw2p1_spiral.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
hw2p1_spiral/CMakeFiles/hw2p1_spiral.dir/build: hw2p1_spiral/hw2p1_spiral

.PHONY : hw2p1_spiral/CMakeFiles/hw2p1_spiral.dir/build

hw2p1_spiral/CMakeFiles/hw2p1_spiral.dir/requires: hw2p1_spiral/CMakeFiles/hw2p1_spiral.dir/main.cpp.o.requires

.PHONY : hw2p1_spiral/CMakeFiles/hw2p1_spiral.dir/requires

hw2p1_spiral/CMakeFiles/hw2p1_spiral.dir/clean:
	cd "/Users/cyrilwendl/Documents/EPFL/Introduction to Computer Graphics/icg17/build/hw2p1_spiral" && $(CMAKE_COMMAND) -P CMakeFiles/hw2p1_spiral.dir/cmake_clean.cmake
.PHONY : hw2p1_spiral/CMakeFiles/hw2p1_spiral.dir/clean

hw2p1_spiral/CMakeFiles/hw2p1_spiral.dir/depend:
	cd "/Users/cyrilwendl/Documents/EPFL/Introduction to Computer Graphics/icg17/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/cyrilwendl/Documents/EPFL/Introduction to Computer Graphics/icg17" "/Users/cyrilwendl/Documents/EPFL/Introduction to Computer Graphics/icg17/hw2p1_spiral" "/Users/cyrilwendl/Documents/EPFL/Introduction to Computer Graphics/icg17/build" "/Users/cyrilwendl/Documents/EPFL/Introduction to Computer Graphics/icg17/build/hw2p1_spiral" "/Users/cyrilwendl/Documents/EPFL/Introduction to Computer Graphics/icg17/build/hw2p1_spiral/CMakeFiles/hw2p1_spiral.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : hw2p1_spiral/CMakeFiles/hw2p1_spiral.dir/depend

