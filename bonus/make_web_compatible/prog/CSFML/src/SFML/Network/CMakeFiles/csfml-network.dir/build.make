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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/in/CSFML

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/in/CSFML

# Include any dependencies generated for this target.
include src/SFML/Network/CMakeFiles/csfml-network.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/SFML/Network/CMakeFiles/csfml-network.dir/compiler_depend.make

# Include the progress variables for this target.
include src/SFML/Network/CMakeFiles/csfml-network.dir/progress.make

# Include the compile flags for this target's objects.
include src/SFML/Network/CMakeFiles/csfml-network.dir/flags.make

src/SFML/Network/CMakeFiles/csfml-network.dir/Ftp.cpp.o: src/SFML/Network/CMakeFiles/csfml-network.dir/flags.make
src/SFML/Network/CMakeFiles/csfml-network.dir/Ftp.cpp.o: src/SFML/Network/Ftp.cpp
src/SFML/Network/CMakeFiles/csfml-network.dir/Ftp.cpp.o: src/SFML/Network/CMakeFiles/csfml-network.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/in/CSFML/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/SFML/Network/CMakeFiles/csfml-network.dir/Ftp.cpp.o"
	cd /home/in/CSFML/src/SFML/Network && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/SFML/Network/CMakeFiles/csfml-network.dir/Ftp.cpp.o -MF CMakeFiles/csfml-network.dir/Ftp.cpp.o.d -o CMakeFiles/csfml-network.dir/Ftp.cpp.o -c /home/in/CSFML/src/SFML/Network/Ftp.cpp

src/SFML/Network/CMakeFiles/csfml-network.dir/Ftp.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/csfml-network.dir/Ftp.cpp.i"
	cd /home/in/CSFML/src/SFML/Network && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/in/CSFML/src/SFML/Network/Ftp.cpp > CMakeFiles/csfml-network.dir/Ftp.cpp.i

src/SFML/Network/CMakeFiles/csfml-network.dir/Ftp.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/csfml-network.dir/Ftp.cpp.s"
	cd /home/in/CSFML/src/SFML/Network && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/in/CSFML/src/SFML/Network/Ftp.cpp -o CMakeFiles/csfml-network.dir/Ftp.cpp.s

src/SFML/Network/CMakeFiles/csfml-network.dir/Http.cpp.o: src/SFML/Network/CMakeFiles/csfml-network.dir/flags.make
src/SFML/Network/CMakeFiles/csfml-network.dir/Http.cpp.o: src/SFML/Network/Http.cpp
src/SFML/Network/CMakeFiles/csfml-network.dir/Http.cpp.o: src/SFML/Network/CMakeFiles/csfml-network.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/in/CSFML/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/SFML/Network/CMakeFiles/csfml-network.dir/Http.cpp.o"
	cd /home/in/CSFML/src/SFML/Network && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/SFML/Network/CMakeFiles/csfml-network.dir/Http.cpp.o -MF CMakeFiles/csfml-network.dir/Http.cpp.o.d -o CMakeFiles/csfml-network.dir/Http.cpp.o -c /home/in/CSFML/src/SFML/Network/Http.cpp

src/SFML/Network/CMakeFiles/csfml-network.dir/Http.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/csfml-network.dir/Http.cpp.i"
	cd /home/in/CSFML/src/SFML/Network && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/in/CSFML/src/SFML/Network/Http.cpp > CMakeFiles/csfml-network.dir/Http.cpp.i

src/SFML/Network/CMakeFiles/csfml-network.dir/Http.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/csfml-network.dir/Http.cpp.s"
	cd /home/in/CSFML/src/SFML/Network && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/in/CSFML/src/SFML/Network/Http.cpp -o CMakeFiles/csfml-network.dir/Http.cpp.s

src/SFML/Network/CMakeFiles/csfml-network.dir/IpAddress.cpp.o: src/SFML/Network/CMakeFiles/csfml-network.dir/flags.make
src/SFML/Network/CMakeFiles/csfml-network.dir/IpAddress.cpp.o: src/SFML/Network/IpAddress.cpp
src/SFML/Network/CMakeFiles/csfml-network.dir/IpAddress.cpp.o: src/SFML/Network/CMakeFiles/csfml-network.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/in/CSFML/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/SFML/Network/CMakeFiles/csfml-network.dir/IpAddress.cpp.o"
	cd /home/in/CSFML/src/SFML/Network && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/SFML/Network/CMakeFiles/csfml-network.dir/IpAddress.cpp.o -MF CMakeFiles/csfml-network.dir/IpAddress.cpp.o.d -o CMakeFiles/csfml-network.dir/IpAddress.cpp.o -c /home/in/CSFML/src/SFML/Network/IpAddress.cpp

src/SFML/Network/CMakeFiles/csfml-network.dir/IpAddress.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/csfml-network.dir/IpAddress.cpp.i"
	cd /home/in/CSFML/src/SFML/Network && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/in/CSFML/src/SFML/Network/IpAddress.cpp > CMakeFiles/csfml-network.dir/IpAddress.cpp.i

src/SFML/Network/CMakeFiles/csfml-network.dir/IpAddress.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/csfml-network.dir/IpAddress.cpp.s"
	cd /home/in/CSFML/src/SFML/Network && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/in/CSFML/src/SFML/Network/IpAddress.cpp -o CMakeFiles/csfml-network.dir/IpAddress.cpp.s

src/SFML/Network/CMakeFiles/csfml-network.dir/Packet.cpp.o: src/SFML/Network/CMakeFiles/csfml-network.dir/flags.make
src/SFML/Network/CMakeFiles/csfml-network.dir/Packet.cpp.o: src/SFML/Network/Packet.cpp
src/SFML/Network/CMakeFiles/csfml-network.dir/Packet.cpp.o: src/SFML/Network/CMakeFiles/csfml-network.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/in/CSFML/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object src/SFML/Network/CMakeFiles/csfml-network.dir/Packet.cpp.o"
	cd /home/in/CSFML/src/SFML/Network && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/SFML/Network/CMakeFiles/csfml-network.dir/Packet.cpp.o -MF CMakeFiles/csfml-network.dir/Packet.cpp.o.d -o CMakeFiles/csfml-network.dir/Packet.cpp.o -c /home/in/CSFML/src/SFML/Network/Packet.cpp

src/SFML/Network/CMakeFiles/csfml-network.dir/Packet.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/csfml-network.dir/Packet.cpp.i"
	cd /home/in/CSFML/src/SFML/Network && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/in/CSFML/src/SFML/Network/Packet.cpp > CMakeFiles/csfml-network.dir/Packet.cpp.i

src/SFML/Network/CMakeFiles/csfml-network.dir/Packet.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/csfml-network.dir/Packet.cpp.s"
	cd /home/in/CSFML/src/SFML/Network && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/in/CSFML/src/SFML/Network/Packet.cpp -o CMakeFiles/csfml-network.dir/Packet.cpp.s

src/SFML/Network/CMakeFiles/csfml-network.dir/SocketSelector.cpp.o: src/SFML/Network/CMakeFiles/csfml-network.dir/flags.make
src/SFML/Network/CMakeFiles/csfml-network.dir/SocketSelector.cpp.o: src/SFML/Network/SocketSelector.cpp
src/SFML/Network/CMakeFiles/csfml-network.dir/SocketSelector.cpp.o: src/SFML/Network/CMakeFiles/csfml-network.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/in/CSFML/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object src/SFML/Network/CMakeFiles/csfml-network.dir/SocketSelector.cpp.o"
	cd /home/in/CSFML/src/SFML/Network && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/SFML/Network/CMakeFiles/csfml-network.dir/SocketSelector.cpp.o -MF CMakeFiles/csfml-network.dir/SocketSelector.cpp.o.d -o CMakeFiles/csfml-network.dir/SocketSelector.cpp.o -c /home/in/CSFML/src/SFML/Network/SocketSelector.cpp

src/SFML/Network/CMakeFiles/csfml-network.dir/SocketSelector.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/csfml-network.dir/SocketSelector.cpp.i"
	cd /home/in/CSFML/src/SFML/Network && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/in/CSFML/src/SFML/Network/SocketSelector.cpp > CMakeFiles/csfml-network.dir/SocketSelector.cpp.i

src/SFML/Network/CMakeFiles/csfml-network.dir/SocketSelector.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/csfml-network.dir/SocketSelector.cpp.s"
	cd /home/in/CSFML/src/SFML/Network && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/in/CSFML/src/SFML/Network/SocketSelector.cpp -o CMakeFiles/csfml-network.dir/SocketSelector.cpp.s

src/SFML/Network/CMakeFiles/csfml-network.dir/TcpListener.cpp.o: src/SFML/Network/CMakeFiles/csfml-network.dir/flags.make
src/SFML/Network/CMakeFiles/csfml-network.dir/TcpListener.cpp.o: src/SFML/Network/TcpListener.cpp
src/SFML/Network/CMakeFiles/csfml-network.dir/TcpListener.cpp.o: src/SFML/Network/CMakeFiles/csfml-network.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/in/CSFML/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object src/SFML/Network/CMakeFiles/csfml-network.dir/TcpListener.cpp.o"
	cd /home/in/CSFML/src/SFML/Network && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/SFML/Network/CMakeFiles/csfml-network.dir/TcpListener.cpp.o -MF CMakeFiles/csfml-network.dir/TcpListener.cpp.o.d -o CMakeFiles/csfml-network.dir/TcpListener.cpp.o -c /home/in/CSFML/src/SFML/Network/TcpListener.cpp

src/SFML/Network/CMakeFiles/csfml-network.dir/TcpListener.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/csfml-network.dir/TcpListener.cpp.i"
	cd /home/in/CSFML/src/SFML/Network && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/in/CSFML/src/SFML/Network/TcpListener.cpp > CMakeFiles/csfml-network.dir/TcpListener.cpp.i

src/SFML/Network/CMakeFiles/csfml-network.dir/TcpListener.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/csfml-network.dir/TcpListener.cpp.s"
	cd /home/in/CSFML/src/SFML/Network && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/in/CSFML/src/SFML/Network/TcpListener.cpp -o CMakeFiles/csfml-network.dir/TcpListener.cpp.s

src/SFML/Network/CMakeFiles/csfml-network.dir/TcpSocket.cpp.o: src/SFML/Network/CMakeFiles/csfml-network.dir/flags.make
src/SFML/Network/CMakeFiles/csfml-network.dir/TcpSocket.cpp.o: src/SFML/Network/TcpSocket.cpp
src/SFML/Network/CMakeFiles/csfml-network.dir/TcpSocket.cpp.o: src/SFML/Network/CMakeFiles/csfml-network.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/in/CSFML/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object src/SFML/Network/CMakeFiles/csfml-network.dir/TcpSocket.cpp.o"
	cd /home/in/CSFML/src/SFML/Network && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/SFML/Network/CMakeFiles/csfml-network.dir/TcpSocket.cpp.o -MF CMakeFiles/csfml-network.dir/TcpSocket.cpp.o.d -o CMakeFiles/csfml-network.dir/TcpSocket.cpp.o -c /home/in/CSFML/src/SFML/Network/TcpSocket.cpp

src/SFML/Network/CMakeFiles/csfml-network.dir/TcpSocket.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/csfml-network.dir/TcpSocket.cpp.i"
	cd /home/in/CSFML/src/SFML/Network && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/in/CSFML/src/SFML/Network/TcpSocket.cpp > CMakeFiles/csfml-network.dir/TcpSocket.cpp.i

src/SFML/Network/CMakeFiles/csfml-network.dir/TcpSocket.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/csfml-network.dir/TcpSocket.cpp.s"
	cd /home/in/CSFML/src/SFML/Network && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/in/CSFML/src/SFML/Network/TcpSocket.cpp -o CMakeFiles/csfml-network.dir/TcpSocket.cpp.s

src/SFML/Network/CMakeFiles/csfml-network.dir/UdpSocket.cpp.o: src/SFML/Network/CMakeFiles/csfml-network.dir/flags.make
src/SFML/Network/CMakeFiles/csfml-network.dir/UdpSocket.cpp.o: src/SFML/Network/UdpSocket.cpp
src/SFML/Network/CMakeFiles/csfml-network.dir/UdpSocket.cpp.o: src/SFML/Network/CMakeFiles/csfml-network.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/in/CSFML/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object src/SFML/Network/CMakeFiles/csfml-network.dir/UdpSocket.cpp.o"
	cd /home/in/CSFML/src/SFML/Network && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/SFML/Network/CMakeFiles/csfml-network.dir/UdpSocket.cpp.o -MF CMakeFiles/csfml-network.dir/UdpSocket.cpp.o.d -o CMakeFiles/csfml-network.dir/UdpSocket.cpp.o -c /home/in/CSFML/src/SFML/Network/UdpSocket.cpp

src/SFML/Network/CMakeFiles/csfml-network.dir/UdpSocket.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/csfml-network.dir/UdpSocket.cpp.i"
	cd /home/in/CSFML/src/SFML/Network && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/in/CSFML/src/SFML/Network/UdpSocket.cpp > CMakeFiles/csfml-network.dir/UdpSocket.cpp.i

src/SFML/Network/CMakeFiles/csfml-network.dir/UdpSocket.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/csfml-network.dir/UdpSocket.cpp.s"
	cd /home/in/CSFML/src/SFML/Network && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/in/CSFML/src/SFML/Network/UdpSocket.cpp -o CMakeFiles/csfml-network.dir/UdpSocket.cpp.s

# Object files for target csfml-network
csfml__network_OBJECTS = \
"CMakeFiles/csfml-network.dir/Ftp.cpp.o" \
"CMakeFiles/csfml-network.dir/Http.cpp.o" \
"CMakeFiles/csfml-network.dir/IpAddress.cpp.o" \
"CMakeFiles/csfml-network.dir/Packet.cpp.o" \
"CMakeFiles/csfml-network.dir/SocketSelector.cpp.o" \
"CMakeFiles/csfml-network.dir/TcpListener.cpp.o" \
"CMakeFiles/csfml-network.dir/TcpSocket.cpp.o" \
"CMakeFiles/csfml-network.dir/UdpSocket.cpp.o"

# External object files for target csfml-network
csfml__network_EXTERNAL_OBJECTS =

lib/libcsfml-network.a: src/SFML/Network/CMakeFiles/csfml-network.dir/Ftp.cpp.o
lib/libcsfml-network.a: src/SFML/Network/CMakeFiles/csfml-network.dir/Http.cpp.o
lib/libcsfml-network.a: src/SFML/Network/CMakeFiles/csfml-network.dir/IpAddress.cpp.o
lib/libcsfml-network.a: src/SFML/Network/CMakeFiles/csfml-network.dir/Packet.cpp.o
lib/libcsfml-network.a: src/SFML/Network/CMakeFiles/csfml-network.dir/SocketSelector.cpp.o
lib/libcsfml-network.a: src/SFML/Network/CMakeFiles/csfml-network.dir/TcpListener.cpp.o
lib/libcsfml-network.a: src/SFML/Network/CMakeFiles/csfml-network.dir/TcpSocket.cpp.o
lib/libcsfml-network.a: src/SFML/Network/CMakeFiles/csfml-network.dir/UdpSocket.cpp.o
lib/libcsfml-network.a: src/SFML/Network/CMakeFiles/csfml-network.dir/build.make
lib/libcsfml-network.a: src/SFML/Network/CMakeFiles/csfml-network.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/in/CSFML/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Linking CXX static library ../../../lib/libcsfml-network.a"
	cd /home/in/CSFML/src/SFML/Network && $(CMAKE_COMMAND) -P CMakeFiles/csfml-network.dir/cmake_clean_target.cmake
	cd /home/in/CSFML/src/SFML/Network && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/csfml-network.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/SFML/Network/CMakeFiles/csfml-network.dir/build: lib/libcsfml-network.a
.PHONY : src/SFML/Network/CMakeFiles/csfml-network.dir/build

src/SFML/Network/CMakeFiles/csfml-network.dir/clean:
	cd /home/in/CSFML/src/SFML/Network && $(CMAKE_COMMAND) -P CMakeFiles/csfml-network.dir/cmake_clean.cmake
.PHONY : src/SFML/Network/CMakeFiles/csfml-network.dir/clean

src/SFML/Network/CMakeFiles/csfml-network.dir/depend:
	cd /home/in/CSFML && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/in/CSFML /home/in/CSFML/src/SFML/Network /home/in/CSFML /home/in/CSFML/src/SFML/Network /home/in/CSFML/src/SFML/Network/CMakeFiles/csfml-network.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/SFML/Network/CMakeFiles/csfml-network.dir/depend

