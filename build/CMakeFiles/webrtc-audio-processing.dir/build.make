# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.8

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
CMAKE_COMMAND = E:/msys64/mingw64/bin/cmake.exe

# The command to remove a file.
RM = E:/msys64/mingw64/bin/cmake.exe -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = E:/JFire/webrtc_runtime

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = E:/JFire/webrtc_runtime/build

# Include any dependencies generated for this target.
include CMakeFiles/webrtc-audio-processing.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/webrtc-audio-processing.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/webrtc-audio-processing.dir/flags.make

CMakeFiles/webrtc-audio-processing.dir/WebRtcAudioTest.cpp.obj: CMakeFiles/webrtc-audio-processing.dir/flags.make
CMakeFiles/webrtc-audio-processing.dir/WebRtcAudioTest.cpp.obj: CMakeFiles/webrtc-audio-processing.dir/includes_CXX.rsp
CMakeFiles/webrtc-audio-processing.dir/WebRtcAudioTest.cpp.obj: ../WebRtcAudioTest.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:/JFire/webrtc_runtime/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/webrtc-audio-processing.dir/WebRtcAudioTest.cpp.obj"
	E:/msys64/mingw64/bin/c++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/webrtc-audio-processing.dir/WebRtcAudioTest.cpp.obj -c E:/JFire/webrtc_runtime/WebRtcAudioTest.cpp

CMakeFiles/webrtc-audio-processing.dir/WebRtcAudioTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/webrtc-audio-processing.dir/WebRtcAudioTest.cpp.i"
	E:/msys64/mingw64/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E E:/JFire/webrtc_runtime/WebRtcAudioTest.cpp > CMakeFiles/webrtc-audio-processing.dir/WebRtcAudioTest.cpp.i

CMakeFiles/webrtc-audio-processing.dir/WebRtcAudioTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/webrtc-audio-processing.dir/WebRtcAudioTest.cpp.s"
	E:/msys64/mingw64/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S E:/JFire/webrtc_runtime/WebRtcAudioTest.cpp -o CMakeFiles/webrtc-audio-processing.dir/WebRtcAudioTest.cpp.s

CMakeFiles/webrtc-audio-processing.dir/WebRtcAudioTest.cpp.obj.requires:

.PHONY : CMakeFiles/webrtc-audio-processing.dir/WebRtcAudioTest.cpp.obj.requires

CMakeFiles/webrtc-audio-processing.dir/WebRtcAudioTest.cpp.obj.provides: CMakeFiles/webrtc-audio-processing.dir/WebRtcAudioTest.cpp.obj.requires
	$(MAKE) -f CMakeFiles/webrtc-audio-processing.dir/build.make CMakeFiles/webrtc-audio-processing.dir/WebRtcAudioTest.cpp.obj.provides.build
.PHONY : CMakeFiles/webrtc-audio-processing.dir/WebRtcAudioTest.cpp.obj.provides

CMakeFiles/webrtc-audio-processing.dir/WebRtcAudioTest.cpp.obj.provides.build: CMakeFiles/webrtc-audio-processing.dir/WebRtcAudioTest.cpp.obj


# Object files for target webrtc-audio-processing
webrtc__audio__processing_OBJECTS = \
"CMakeFiles/webrtc-audio-processing.dir/WebRtcAudioTest.cpp.obj"

# External object files for target webrtc-audio-processing
webrtc__audio__processing_EXTERNAL_OBJECTS =

webrtc-audio-processing.exe: CMakeFiles/webrtc-audio-processing.dir/WebRtcAudioTest.cpp.obj
webrtc-audio-processing.exe: CMakeFiles/webrtc-audio-processing.dir/build.make
webrtc-audio-processing.exe: libwebrtc.dll.a
webrtc-audio-processing.exe: CMakeFiles/webrtc-audio-processing.dir/linklibs.rsp
webrtc-audio-processing.exe: CMakeFiles/webrtc-audio-processing.dir/objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=E:/JFire/webrtc_runtime/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable webrtc-audio-processing.exe"
	E:/msys64/mingw64/bin/cmake.exe -E remove -f CMakeFiles/webrtc-audio-processing.dir/objects.a
	E:/msys64/mingw64/bin/ar.exe cr CMakeFiles/webrtc-audio-processing.dir/objects.a @CMakeFiles/webrtc-audio-processing.dir/objects1.rsp
	E:/msys64/mingw64/bin/c++.exe  -std=c++11 -static -static-libgcc -static-libstdc++ -O3 -DNDEBUG   -Wl,--whole-archive CMakeFiles/webrtc-audio-processing.dir/objects.a -Wl,--no-whole-archive  -o webrtc-audio-processing.exe -Wl,--major-image-version,0,--minor-image-version,0 @CMakeFiles/webrtc-audio-processing.dir/linklibs.rsp

# Rule to build all files generated by this target.
CMakeFiles/webrtc-audio-processing.dir/build: webrtc-audio-processing.exe

.PHONY : CMakeFiles/webrtc-audio-processing.dir/build

CMakeFiles/webrtc-audio-processing.dir/requires: CMakeFiles/webrtc-audio-processing.dir/WebRtcAudioTest.cpp.obj.requires

.PHONY : CMakeFiles/webrtc-audio-processing.dir/requires

CMakeFiles/webrtc-audio-processing.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/webrtc-audio-processing.dir/cmake_clean.cmake
.PHONY : CMakeFiles/webrtc-audio-processing.dir/clean

CMakeFiles/webrtc-audio-processing.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" E:/JFire/webrtc_runtime E:/JFire/webrtc_runtime E:/JFire/webrtc_runtime/build E:/JFire/webrtc_runtime/build E:/JFire/webrtc_runtime/build/CMakeFiles/webrtc-audio-processing.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/webrtc-audio-processing.dir/depend

