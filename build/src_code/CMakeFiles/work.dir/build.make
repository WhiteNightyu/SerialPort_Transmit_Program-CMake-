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
include src_code/CMakeFiles/work.dir/depend.make

# Include the progress variables for this target.
include src_code/CMakeFiles/work.dir/progress.make

# Include the compile flags for this target's objects.
include src_code/CMakeFiles/work.dir/flags.make

src_code/CMakeFiles/work.dir/main.cpp.o: src_code/CMakeFiles/work.dir/flags.make
src_code/CMakeFiles/work.dir/main.cpp.o: ../src_code/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/white/SerialPort_Transmit（CMake版）/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src_code/CMakeFiles/work.dir/main.cpp.o"
	cd /home/white/SerialPort_Transmit（CMake版）/build/src_code && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/work.dir/main.cpp.o -c /home/white/SerialPort_Transmit（CMake版）/src_code/main.cpp

src_code/CMakeFiles/work.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/work.dir/main.cpp.i"
	cd /home/white/SerialPort_Transmit（CMake版）/build/src_code && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/white/SerialPort_Transmit（CMake版）/src_code/main.cpp > CMakeFiles/work.dir/main.cpp.i

src_code/CMakeFiles/work.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/work.dir/main.cpp.s"
	cd /home/white/SerialPort_Transmit（CMake版）/build/src_code && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/white/SerialPort_Transmit（CMake版）/src_code/main.cpp -o CMakeFiles/work.dir/main.cpp.s

# Object files for target work
work_OBJECTS = \
"CMakeFiles/work.dir/main.cpp.o"

# External object files for target work
work_EXTERNAL_OBJECTS =

bin/work: src_code/CMakeFiles/work.dir/main.cpp.o
bin/work: src_code/CMakeFiles/work.dir/build.make
bin/work: lib/libMylib.a
bin/work: /usr/local/lib/libopencv_dnn.so.4.1.0
bin/work: /usr/local/lib/libopencv_gapi.so.4.1.0
bin/work: /usr/local/lib/libopencv_ml.so.4.1.0
bin/work: /usr/local/lib/libopencv_objdetect.so.4.1.0
bin/work: /usr/local/lib/libopencv_photo.so.4.1.0
bin/work: /usr/local/lib/libopencv_stitching.so.4.1.0
bin/work: /usr/local/lib/libopencv_video.so.4.1.0
bin/work: /usr/local/lib/libopencv_calib3d.so.4.1.0
bin/work: /usr/local/lib/libopencv_features2d.so.4.1.0
bin/work: /usr/local/lib/libopencv_flann.so.4.1.0
bin/work: /usr/local/lib/libopencv_highgui.so.4.1.0
bin/work: /usr/local/lib/libopencv_videoio.so.4.1.0
bin/work: /usr/local/lib/libopencv_imgcodecs.so.4.1.0
bin/work: /usr/local/lib/libopencv_imgproc.so.4.1.0
bin/work: /usr/local/lib/libopencv_core.so.4.1.0
bin/work: src_code/CMakeFiles/work.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/white/SerialPort_Transmit（CMake版）/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../bin/work"
	cd /home/white/SerialPort_Transmit（CMake版）/build/src_code && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/work.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src_code/CMakeFiles/work.dir/build: bin/work

.PHONY : src_code/CMakeFiles/work.dir/build

src_code/CMakeFiles/work.dir/clean:
	cd /home/white/SerialPort_Transmit（CMake版）/build/src_code && $(CMAKE_COMMAND) -P CMakeFiles/work.dir/cmake_clean.cmake
.PHONY : src_code/CMakeFiles/work.dir/clean

src_code/CMakeFiles/work.dir/depend:
	cd /home/white/SerialPort_Transmit（CMake版）/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/white/SerialPort_Transmit（CMake版） /home/white/SerialPort_Transmit（CMake版）/src_code /home/white/SerialPort_Transmit（CMake版）/build /home/white/SerialPort_Transmit（CMake版）/build/src_code /home/white/SerialPort_Transmit（CMake版）/build/src_code/CMakeFiles/work.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src_code/CMakeFiles/work.dir/depend
