# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/octopus/Documents/ESIR/ES/HDR_COZOT

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/octopus/Documents/ESIR/ES/HDR_COZOT/build

# Include any dependencies generated for this target.
include CMakeFiles/HDR_COZOT.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/HDR_COZOT.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/HDR_COZOT.dir/flags.make

CMakeFiles/HDR_COZOT.dir/src/gsolve.cpp.o: CMakeFiles/HDR_COZOT.dir/flags.make
CMakeFiles/HDR_COZOT.dir/src/gsolve.cpp.o: ../src/gsolve.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/octopus/Documents/ESIR/ES/HDR_COZOT/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/HDR_COZOT.dir/src/gsolve.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/HDR_COZOT.dir/src/gsolve.cpp.o -c /home/octopus/Documents/ESIR/ES/HDR_COZOT/src/gsolve.cpp

CMakeFiles/HDR_COZOT.dir/src/gsolve.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/HDR_COZOT.dir/src/gsolve.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/octopus/Documents/ESIR/ES/HDR_COZOT/src/gsolve.cpp > CMakeFiles/HDR_COZOT.dir/src/gsolve.cpp.i

CMakeFiles/HDR_COZOT.dir/src/gsolve.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/HDR_COZOT.dir/src/gsolve.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/octopus/Documents/ESIR/ES/HDR_COZOT/src/gsolve.cpp -o CMakeFiles/HDR_COZOT.dir/src/gsolve.cpp.s

CMakeFiles/HDR_COZOT.dir/src/gsolve.cpp.o.requires:
.PHONY : CMakeFiles/HDR_COZOT.dir/src/gsolve.cpp.o.requires

CMakeFiles/HDR_COZOT.dir/src/gsolve.cpp.o.provides: CMakeFiles/HDR_COZOT.dir/src/gsolve.cpp.o.requires
	$(MAKE) -f CMakeFiles/HDR_COZOT.dir/build.make CMakeFiles/HDR_COZOT.dir/src/gsolve.cpp.o.provides.build
.PHONY : CMakeFiles/HDR_COZOT.dir/src/gsolve.cpp.o.provides

CMakeFiles/HDR_COZOT.dir/src/gsolve.cpp.o.provides.build: CMakeFiles/HDR_COZOT.dir/src/gsolve.cpp.o

CMakeFiles/HDR_COZOT.dir/src/reference.cpp.o: CMakeFiles/HDR_COZOT.dir/flags.make
CMakeFiles/HDR_COZOT.dir/src/reference.cpp.o: ../src/reference.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/octopus/Documents/ESIR/ES/HDR_COZOT/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/HDR_COZOT.dir/src/reference.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/HDR_COZOT.dir/src/reference.cpp.o -c /home/octopus/Documents/ESIR/ES/HDR_COZOT/src/reference.cpp

CMakeFiles/HDR_COZOT.dir/src/reference.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/HDR_COZOT.dir/src/reference.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/octopus/Documents/ESIR/ES/HDR_COZOT/src/reference.cpp > CMakeFiles/HDR_COZOT.dir/src/reference.cpp.i

CMakeFiles/HDR_COZOT.dir/src/reference.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/HDR_COZOT.dir/src/reference.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/octopus/Documents/ESIR/ES/HDR_COZOT/src/reference.cpp -o CMakeFiles/HDR_COZOT.dir/src/reference.cpp.s

CMakeFiles/HDR_COZOT.dir/src/reference.cpp.o.requires:
.PHONY : CMakeFiles/HDR_COZOT.dir/src/reference.cpp.o.requires

CMakeFiles/HDR_COZOT.dir/src/reference.cpp.o.provides: CMakeFiles/HDR_COZOT.dir/src/reference.cpp.o.requires
	$(MAKE) -f CMakeFiles/HDR_COZOT.dir/build.make CMakeFiles/HDR_COZOT.dir/src/reference.cpp.o.provides.build
.PHONY : CMakeFiles/HDR_COZOT.dir/src/reference.cpp.o.provides

CMakeFiles/HDR_COZOT.dir/src/reference.cpp.o.provides.build: CMakeFiles/HDR_COZOT.dir/src/reference.cpp.o

CMakeFiles/HDR_COZOT.dir/src/main.cpp.o: CMakeFiles/HDR_COZOT.dir/flags.make
CMakeFiles/HDR_COZOT.dir/src/main.cpp.o: ../src/main.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/octopus/Documents/ESIR/ES/HDR_COZOT/build/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/HDR_COZOT.dir/src/main.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/HDR_COZOT.dir/src/main.cpp.o -c /home/octopus/Documents/ESIR/ES/HDR_COZOT/src/main.cpp

CMakeFiles/HDR_COZOT.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/HDR_COZOT.dir/src/main.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/octopus/Documents/ESIR/ES/HDR_COZOT/src/main.cpp > CMakeFiles/HDR_COZOT.dir/src/main.cpp.i

CMakeFiles/HDR_COZOT.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/HDR_COZOT.dir/src/main.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/octopus/Documents/ESIR/ES/HDR_COZOT/src/main.cpp -o CMakeFiles/HDR_COZOT.dir/src/main.cpp.s

CMakeFiles/HDR_COZOT.dir/src/main.cpp.o.requires:
.PHONY : CMakeFiles/HDR_COZOT.dir/src/main.cpp.o.requires

CMakeFiles/HDR_COZOT.dir/src/main.cpp.o.provides: CMakeFiles/HDR_COZOT.dir/src/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/HDR_COZOT.dir/build.make CMakeFiles/HDR_COZOT.dir/src/main.cpp.o.provides.build
.PHONY : CMakeFiles/HDR_COZOT.dir/src/main.cpp.o.provides

CMakeFiles/HDR_COZOT.dir/src/main.cpp.o.provides.build: CMakeFiles/HDR_COZOT.dir/src/main.cpp.o

CMakeFiles/HDR_COZOT.dir/src/exif.cpp.o: CMakeFiles/HDR_COZOT.dir/flags.make
CMakeFiles/HDR_COZOT.dir/src/exif.cpp.o: ../src/exif.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/octopus/Documents/ESIR/ES/HDR_COZOT/build/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/HDR_COZOT.dir/src/exif.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/HDR_COZOT.dir/src/exif.cpp.o -c /home/octopus/Documents/ESIR/ES/HDR_COZOT/src/exif.cpp

CMakeFiles/HDR_COZOT.dir/src/exif.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/HDR_COZOT.dir/src/exif.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/octopus/Documents/ESIR/ES/HDR_COZOT/src/exif.cpp > CMakeFiles/HDR_COZOT.dir/src/exif.cpp.i

CMakeFiles/HDR_COZOT.dir/src/exif.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/HDR_COZOT.dir/src/exif.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/octopus/Documents/ESIR/ES/HDR_COZOT/src/exif.cpp -o CMakeFiles/HDR_COZOT.dir/src/exif.cpp.s

CMakeFiles/HDR_COZOT.dir/src/exif.cpp.o.requires:
.PHONY : CMakeFiles/HDR_COZOT.dir/src/exif.cpp.o.requires

CMakeFiles/HDR_COZOT.dir/src/exif.cpp.o.provides: CMakeFiles/HDR_COZOT.dir/src/exif.cpp.o.requires
	$(MAKE) -f CMakeFiles/HDR_COZOT.dir/build.make CMakeFiles/HDR_COZOT.dir/src/exif.cpp.o.provides.build
.PHONY : CMakeFiles/HDR_COZOT.dir/src/exif.cpp.o.provides

CMakeFiles/HDR_COZOT.dir/src/exif.cpp.o.provides.build: CMakeFiles/HDR_COZOT.dir/src/exif.cpp.o

# Object files for target HDR_COZOT
HDR_COZOT_OBJECTS = \
"CMakeFiles/HDR_COZOT.dir/src/gsolve.cpp.o" \
"CMakeFiles/HDR_COZOT.dir/src/reference.cpp.o" \
"CMakeFiles/HDR_COZOT.dir/src/main.cpp.o" \
"CMakeFiles/HDR_COZOT.dir/src/exif.cpp.o"

# External object files for target HDR_COZOT
HDR_COZOT_EXTERNAL_OBJECTS =

HDR_COZOT: CMakeFiles/HDR_COZOT.dir/src/gsolve.cpp.o
HDR_COZOT: CMakeFiles/HDR_COZOT.dir/src/reference.cpp.o
HDR_COZOT: CMakeFiles/HDR_COZOT.dir/src/main.cpp.o
HDR_COZOT: CMakeFiles/HDR_COZOT.dir/src/exif.cpp.o
HDR_COZOT: CMakeFiles/HDR_COZOT.dir/build.make
HDR_COZOT: /home/octopus/Documents/opencv-3.0.0/lib/libopencv_viz.so.3.0.0
HDR_COZOT: /home/octopus/Documents/opencv-3.0.0/lib/libopencv_videostab.so.3.0.0
HDR_COZOT: /home/octopus/Documents/opencv-3.0.0/lib/libopencv_videoio.so.3.0.0
HDR_COZOT: /home/octopus/Documents/opencv-3.0.0/lib/libopencv_video.so.3.0.0
HDR_COZOT: /home/octopus/Documents/opencv-3.0.0/lib/libopencv_superres.so.3.0.0
HDR_COZOT: /home/octopus/Documents/opencv-3.0.0/lib/libopencv_stitching.so.3.0.0
HDR_COZOT: /home/octopus/Documents/opencv-3.0.0/lib/libopencv_shape.so.3.0.0
HDR_COZOT: /home/octopus/Documents/opencv-3.0.0/lib/libopencv_photo.so.3.0.0
HDR_COZOT: /home/octopus/Documents/opencv-3.0.0/lib/libopencv_objdetect.so.3.0.0
HDR_COZOT: /home/octopus/Documents/opencv-3.0.0/lib/libopencv_ml.so.3.0.0
HDR_COZOT: /home/octopus/Documents/opencv-3.0.0/lib/libopencv_imgproc.so.3.0.0
HDR_COZOT: /home/octopus/Documents/opencv-3.0.0/lib/libopencv_imgcodecs.so.3.0.0
HDR_COZOT: /home/octopus/Documents/opencv-3.0.0/lib/libopencv_highgui.so.3.0.0
HDR_COZOT: /home/octopus/Documents/opencv-3.0.0/lib/libopencv_hal.a
HDR_COZOT: /home/octopus/Documents/opencv-3.0.0/lib/libopencv_flann.so.3.0.0
HDR_COZOT: /home/octopus/Documents/opencv-3.0.0/lib/libopencv_features2d.so.3.0.0
HDR_COZOT: /home/octopus/Documents/opencv-3.0.0/lib/libopencv_core.so.3.0.0
HDR_COZOT: /home/octopus/Documents/opencv-3.0.0/lib/libopencv_calib3d.so.3.0.0
HDR_COZOT: /home/octopus/Documents/opencv-3.0.0/lib/libopencv_features2d.so.3.0.0
HDR_COZOT: /home/octopus/Documents/opencv-3.0.0/lib/libopencv_ml.so.3.0.0
HDR_COZOT: /home/octopus/Documents/opencv-3.0.0/lib/libopencv_highgui.so.3.0.0
HDR_COZOT: /home/octopus/Documents/opencv-3.0.0/lib/libopencv_videoio.so.3.0.0
HDR_COZOT: /home/octopus/Documents/opencv-3.0.0/lib/libopencv_imgcodecs.so.3.0.0
HDR_COZOT: /home/octopus/Documents/opencv-3.0.0/lib/libopencv_flann.so.3.0.0
HDR_COZOT: /home/octopus/Documents/opencv-3.0.0/lib/libopencv_video.so.3.0.0
HDR_COZOT: /home/octopus/Documents/opencv-3.0.0/lib/libopencv_imgproc.so.3.0.0
HDR_COZOT: /home/octopus/Documents/opencv-3.0.0/lib/libopencv_core.so.3.0.0
HDR_COZOT: /home/octopus/Documents/opencv-3.0.0/lib/libopencv_hal.a
HDR_COZOT: /home/octopus/Documents/opencv-3.0.0/3rdparty/ippicv/unpack/ippicv_lnx/lib/intel64/libippicv.a
HDR_COZOT: CMakeFiles/HDR_COZOT.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable HDR_COZOT"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/HDR_COZOT.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/HDR_COZOT.dir/build: HDR_COZOT
.PHONY : CMakeFiles/HDR_COZOT.dir/build

CMakeFiles/HDR_COZOT.dir/requires: CMakeFiles/HDR_COZOT.dir/src/gsolve.cpp.o.requires
CMakeFiles/HDR_COZOT.dir/requires: CMakeFiles/HDR_COZOT.dir/src/reference.cpp.o.requires
CMakeFiles/HDR_COZOT.dir/requires: CMakeFiles/HDR_COZOT.dir/src/main.cpp.o.requires
CMakeFiles/HDR_COZOT.dir/requires: CMakeFiles/HDR_COZOT.dir/src/exif.cpp.o.requires
.PHONY : CMakeFiles/HDR_COZOT.dir/requires

CMakeFiles/HDR_COZOT.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/HDR_COZOT.dir/cmake_clean.cmake
.PHONY : CMakeFiles/HDR_COZOT.dir/clean

CMakeFiles/HDR_COZOT.dir/depend:
	cd /home/octopus/Documents/ESIR/ES/HDR_COZOT/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/octopus/Documents/ESIR/ES/HDR_COZOT /home/octopus/Documents/ESIR/ES/HDR_COZOT /home/octopus/Documents/ESIR/ES/HDR_COZOT/build /home/octopus/Documents/ESIR/ES/HDR_COZOT/build /home/octopus/Documents/ESIR/ES/HDR_COZOT/build/CMakeFiles/HDR_COZOT.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/HDR_COZOT.dir/depend

