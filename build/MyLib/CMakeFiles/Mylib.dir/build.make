# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/white/SerialPort_Transmit（CMake版）

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/white/SerialPort_Transmit（CMake版）/build

# Include any dependencies generated for this target.
include MyLib/CMakeFiles/Mylib.dir/depend.make

# Include the progress variables for this target.
include MyLib/CMakeFiles/Mylib.dir/progress.make

# Include the compile flags for this target's objects.
include MyLib/CMakeFiles/Mylib.dir/flags.make

MyLib/CMakeFiles/Mylib.dir/serialport.cpp.o: MyLib/CMakeFiles/Mylib.dir/flags.make
MyLib/CMakeFiles/Mylib.dir/serialport.cpp.o: ../MyLib/serialport.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/white/SerialPort_Transmit（CMake版）/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object MyLib/CMakeFiles/Mylib.dir/serialport.cpp.o"
	cd /home/white/SerialPort_Transmit（CMake版）/build/MyLib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Mylib.dir/serialport.cpp.o -c /home/white/SerialPort_Transmit（CMake版）/MyLib/serialport.cpp

MyLib/CMakeFiles/Mylib.dir/serialport.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Mylib.dir/serialport.cpp.i"
	cd /home/white/SerialPort_Transmit（CMake版）/build/MyLib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/white/SerialPort_Transmit（CMake版）/MyLib/serialport.cpp > CMakeFiles/Mylib.dir/serialport.cpp.i

MyLib/CMakeFiles/Mylib.dir/serialport.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Mylib.dir/serialport.cpp.s"
	cd /home/white/SerialPort_Transmit（CMake版）/build/MyLib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/white/SerialPort_Transmit（CMake版）/MyLib/serialport.cpp -o CMakeFiles/Mylib.dir/serialport.cpp.s

# Object files for target Mylib
Mylib_OBJECTS = \
"CMakeFiles/Mylib.dir/serialport.cpp.o"

# External object files for target Mylib
Mylib_EXTERNAL_OBJECTS =

lib/libMylib.a: MyLib/CMakeFiles/Mylib.dir/serialport.cpp.o
lib/libMylib.a: MyLib/CMakeFiles/Mylib.dir/build.make
lib/libMylib.a: MyLib/CMakeFiles/Mylib.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/white/SerialPort_Transmit（CMake版）/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library ../lib/libMylib.a"
	cd /home/white/SerialPort_Transmit（CMake版）/build/MyLib && $(CMAKE_COMMAND) -P CMakeFiles/Mylib.dir/cmake_clean_target.cmake
	cd /home/white/SerialPort_Transmit（CMake版）/build/MyLib && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Mylib.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
MyLib/CMakeFiles/Mylib.dir/build: lib/libMylib.a

.PHONY : MyLib/CMakeFiles/Mylib.dir/build

MyLib/CMakeFiles/Mylib.dir/clean:
	cd /home/white/SerialPort_Transmit（CMake版）/build/MyLib && $(CMAKE_COMMAND) -P CMakeFiles/Mylib.dir/cmake_clean.cmake
.PHONY : MyLib/CMakeFiles/Mylib.dir/clean

MyLib/CMakeFiles/Mylib.dir/depend:
	cd /home/white/SerialPort_Transmit（CMake版）/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/white/SerialPort_Transmit（CMake版） /home/white/SerialPort_Transmit（CMake版）/MyLib /home/white/SerialPort_Transmit（CMake版）/build /home/white/SerialPort_Transmit（CMake版）/build/MyLib /home/white/SerialPort_Transmit（CMake版）/build/MyLib/CMakeFiles/Mylib.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : MyLib/CMakeFiles/Mylib.dir/depend
