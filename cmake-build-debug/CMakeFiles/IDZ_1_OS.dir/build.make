# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/karimhamid/Documents/docker_files/ubuntu_with_vim_and_gcc/volume/IDZ_1_OS

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/karimhamid/Documents/docker_files/ubuntu_with_vim_and_gcc/volume/IDZ_1_OS/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/IDZ_1_OS.dir/depend.make
# Include the progress variables for this target.
include CMakeFiles/IDZ_1_OS.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/IDZ_1_OS.dir/flags.make

CMakeFiles/IDZ_1_OS.dir/countNumbersAmountInString.c.o: CMakeFiles/IDZ_1_OS.dir/flags.make
CMakeFiles/IDZ_1_OS.dir/countNumbersAmountInString.c.o: ../countNumbersAmountInString.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/karimhamid/Documents/docker_files/ubuntu_with_vim_and_gcc/volume/IDZ_1_OS/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/IDZ_1_OS.dir/countNumbersAmountInString.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/IDZ_1_OS.dir/countNumbersAmountInString.c.o -c /Users/karimhamid/Documents/docker_files/ubuntu_with_vim_and_gcc/volume/IDZ_1_OS/countNumbersAmountInString.c

CMakeFiles/IDZ_1_OS.dir/countNumbersAmountInString.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/IDZ_1_OS.dir/countNumbersAmountInString.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/karimhamid/Documents/docker_files/ubuntu_with_vim_and_gcc/volume/IDZ_1_OS/countNumbersAmountInString.c > CMakeFiles/IDZ_1_OS.dir/countNumbersAmountInString.c.i

CMakeFiles/IDZ_1_OS.dir/countNumbersAmountInString.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/IDZ_1_OS.dir/countNumbersAmountInString.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/karimhamid/Documents/docker_files/ubuntu_with_vim_and_gcc/volume/IDZ_1_OS/countNumbersAmountInString.c -o CMakeFiles/IDZ_1_OS.dir/countNumbersAmountInString.c.s

# Object files for target IDZ_1_OS
IDZ_1_OS_OBJECTS = \
"CMakeFiles/IDZ_1_OS.dir/countNumbersAmountInString.c.o"

# External object files for target IDZ_1_OS
IDZ_1_OS_EXTERNAL_OBJECTS =

IDZ_1_OS: CMakeFiles/IDZ_1_OS.dir/countNumbersAmountInString.c.o
IDZ_1_OS: CMakeFiles/IDZ_1_OS.dir/build.make
IDZ_1_OS: CMakeFiles/IDZ_1_OS.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/karimhamid/Documents/docker_files/ubuntu_with_vim_and_gcc/volume/IDZ_1_OS/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable IDZ_1_OS"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/IDZ_1_OS.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/IDZ_1_OS.dir/build: IDZ_1_OS
.PHONY : CMakeFiles/IDZ_1_OS.dir/build

CMakeFiles/IDZ_1_OS.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/IDZ_1_OS.dir/cmake_clean.cmake
.PHONY : CMakeFiles/IDZ_1_OS.dir/clean

CMakeFiles/IDZ_1_OS.dir/depend:
	cd /Users/karimhamid/Documents/docker_files/ubuntu_with_vim_and_gcc/volume/IDZ_1_OS/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/karimhamid/Documents/docker_files/ubuntu_with_vim_and_gcc/volume/IDZ_1_OS /Users/karimhamid/Documents/docker_files/ubuntu_with_vim_and_gcc/volume/IDZ_1_OS /Users/karimhamid/Documents/docker_files/ubuntu_with_vim_and_gcc/volume/IDZ_1_OS/cmake-build-debug /Users/karimhamid/Documents/docker_files/ubuntu_with_vim_and_gcc/volume/IDZ_1_OS/cmake-build-debug /Users/karimhamid/Documents/docker_files/ubuntu_with_vim_and_gcc/volume/IDZ_1_OS/cmake-build-debug/CMakeFiles/IDZ_1_OS.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/IDZ_1_OS.dir/depend

