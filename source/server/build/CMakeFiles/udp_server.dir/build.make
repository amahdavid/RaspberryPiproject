# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.24

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
CMAKE_SOURCE_DIR = /home/chika/Documents/a4/server

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/chika/Documents/a4/server/build

# Include any dependencies generated for this target.
include CMakeFiles/udp_server.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/udp_server.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/udp_server.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/udp_server.dir/flags.make

CMakeFiles/udp_server.dir/src/main.c.o: CMakeFiles/udp_server.dir/flags.make
CMakeFiles/udp_server.dir/src/main.c.o: /home/chika/Documents/a4/server/src/main.c
CMakeFiles/udp_server.dir/src/main.c.o: CMakeFiles/udp_server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/chika/Documents/a4/server/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/udp_server.dir/src/main.c.o"
	$(CMAKE_COMMAND) -E __run_co_compile --tidy="clang-tidy;-checks=*,-llvmlibc-restrict-system-libc-headers,-misc-unused-parameters,-clang-diagnostic-unused-parameter,-clang-diagnostic-unused-variable,-cppcoreguidelines-init-variables,-readability-identifier-length,-clang-diagnostic-unused-but-set-variable,-clang-analyzer-deadcode.DeadStores,-altera-id-dependent-backward-branch,-cert-dcl03-c,-hicpp-static-assert,-misc-static-assert,-altera-unroll-loops,-altera-struct-pack-align,-clang-analyzer-security.insecureAPI.strcpy,-bugprone-easily-swappable-parameters,-android-cloexec-open,-clang-analyzer-security.insecureAPI.DeprecatedOrUnsafeBufferHandling,-android-cloexec-accept;--quiet;--extra-arg-before=--driver-mode=gcc" --source=/home/chika/Documents/a4/server/src/main.c -- /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/udp_server.dir/src/main.c.o -MF CMakeFiles/udp_server.dir/src/main.c.o.d -o CMakeFiles/udp_server.dir/src/main.c.o -c /home/chika/Documents/a4/server/src/main.c

CMakeFiles/udp_server.dir/src/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/udp_server.dir/src/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/chika/Documents/a4/server/src/main.c > CMakeFiles/udp_server.dir/src/main.c.i

CMakeFiles/udp_server.dir/src/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/udp_server.dir/src/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/chika/Documents/a4/server/src/main.c -o CMakeFiles/udp_server.dir/src/main.c.s

CMakeFiles/udp_server.dir/src/error.c.o: CMakeFiles/udp_server.dir/flags.make
CMakeFiles/udp_server.dir/src/error.c.o: /home/chika/Documents/a4/server/src/error.c
CMakeFiles/udp_server.dir/src/error.c.o: CMakeFiles/udp_server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/chika/Documents/a4/server/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/udp_server.dir/src/error.c.o"
	$(CMAKE_COMMAND) -E __run_co_compile --tidy="clang-tidy;-checks=*,-llvmlibc-restrict-system-libc-headers,-misc-unused-parameters,-clang-diagnostic-unused-parameter,-clang-diagnostic-unused-variable,-cppcoreguidelines-init-variables,-readability-identifier-length,-clang-diagnostic-unused-but-set-variable,-clang-analyzer-deadcode.DeadStores,-altera-id-dependent-backward-branch,-cert-dcl03-c,-hicpp-static-assert,-misc-static-assert,-altera-unroll-loops,-altera-struct-pack-align,-clang-analyzer-security.insecureAPI.strcpy,-bugprone-easily-swappable-parameters,-android-cloexec-open,-clang-analyzer-security.insecureAPI.DeprecatedOrUnsafeBufferHandling,-android-cloexec-accept;--quiet;--extra-arg-before=--driver-mode=gcc" --source=/home/chika/Documents/a4/server/src/error.c -- /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/udp_server.dir/src/error.c.o -MF CMakeFiles/udp_server.dir/src/error.c.o.d -o CMakeFiles/udp_server.dir/src/error.c.o -c /home/chika/Documents/a4/server/src/error.c

CMakeFiles/udp_server.dir/src/error.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/udp_server.dir/src/error.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/chika/Documents/a4/server/src/error.c > CMakeFiles/udp_server.dir/src/error.c.i

CMakeFiles/udp_server.dir/src/error.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/udp_server.dir/src/error.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/chika/Documents/a4/server/src/error.c -o CMakeFiles/udp_server.dir/src/error.c.s

CMakeFiles/udp_server.dir/src/conversion.c.o: CMakeFiles/udp_server.dir/flags.make
CMakeFiles/udp_server.dir/src/conversion.c.o: /home/chika/Documents/a4/server/src/conversion.c
CMakeFiles/udp_server.dir/src/conversion.c.o: CMakeFiles/udp_server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/chika/Documents/a4/server/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/udp_server.dir/src/conversion.c.o"
	$(CMAKE_COMMAND) -E __run_co_compile --tidy="clang-tidy;-checks=*,-llvmlibc-restrict-system-libc-headers,-misc-unused-parameters,-clang-diagnostic-unused-parameter,-clang-diagnostic-unused-variable,-cppcoreguidelines-init-variables,-readability-identifier-length,-clang-diagnostic-unused-but-set-variable,-clang-analyzer-deadcode.DeadStores,-altera-id-dependent-backward-branch,-cert-dcl03-c,-hicpp-static-assert,-misc-static-assert,-altera-unroll-loops,-altera-struct-pack-align,-clang-analyzer-security.insecureAPI.strcpy,-bugprone-easily-swappable-parameters,-android-cloexec-open,-clang-analyzer-security.insecureAPI.DeprecatedOrUnsafeBufferHandling,-android-cloexec-accept;--quiet;--extra-arg-before=--driver-mode=gcc" --source=/home/chika/Documents/a4/server/src/conversion.c -- /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/udp_server.dir/src/conversion.c.o -MF CMakeFiles/udp_server.dir/src/conversion.c.o.d -o CMakeFiles/udp_server.dir/src/conversion.c.o -c /home/chika/Documents/a4/server/src/conversion.c

CMakeFiles/udp_server.dir/src/conversion.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/udp_server.dir/src/conversion.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/chika/Documents/a4/server/src/conversion.c > CMakeFiles/udp_server.dir/src/conversion.c.i

CMakeFiles/udp_server.dir/src/conversion.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/udp_server.dir/src/conversion.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/chika/Documents/a4/server/src/conversion.c -o CMakeFiles/udp_server.dir/src/conversion.c.s

CMakeFiles/udp_server.dir/src/copy.c.o: CMakeFiles/udp_server.dir/flags.make
CMakeFiles/udp_server.dir/src/copy.c.o: /home/chika/Documents/a4/server/src/copy.c
CMakeFiles/udp_server.dir/src/copy.c.o: CMakeFiles/udp_server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/chika/Documents/a4/server/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/udp_server.dir/src/copy.c.o"
	$(CMAKE_COMMAND) -E __run_co_compile --tidy="clang-tidy;-checks=*,-llvmlibc-restrict-system-libc-headers,-misc-unused-parameters,-clang-diagnostic-unused-parameter,-clang-diagnostic-unused-variable,-cppcoreguidelines-init-variables,-readability-identifier-length,-clang-diagnostic-unused-but-set-variable,-clang-analyzer-deadcode.DeadStores,-altera-id-dependent-backward-branch,-cert-dcl03-c,-hicpp-static-assert,-misc-static-assert,-altera-unroll-loops,-altera-struct-pack-align,-clang-analyzer-security.insecureAPI.strcpy,-bugprone-easily-swappable-parameters,-android-cloexec-open,-clang-analyzer-security.insecureAPI.DeprecatedOrUnsafeBufferHandling,-android-cloexec-accept;--quiet;--extra-arg-before=--driver-mode=gcc" --source=/home/chika/Documents/a4/server/src/copy.c -- /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/udp_server.dir/src/copy.c.o -MF CMakeFiles/udp_server.dir/src/copy.c.o.d -o CMakeFiles/udp_server.dir/src/copy.c.o -c /home/chika/Documents/a4/server/src/copy.c

CMakeFiles/udp_server.dir/src/copy.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/udp_server.dir/src/copy.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/chika/Documents/a4/server/src/copy.c > CMakeFiles/udp_server.dir/src/copy.c.i

CMakeFiles/udp_server.dir/src/copy.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/udp_server.dir/src/copy.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/chika/Documents/a4/server/src/copy.c -o CMakeFiles/udp_server.dir/src/copy.c.s

# Object files for target udp_server
udp_server_OBJECTS = \
"CMakeFiles/udp_server.dir/src/main.c.o" \
"CMakeFiles/udp_server.dir/src/error.c.o" \
"CMakeFiles/udp_server.dir/src/conversion.c.o" \
"CMakeFiles/udp_server.dir/src/copy.c.o"

# External object files for target udp_server
udp_server_EXTERNAL_OBJECTS =

udp_server: CMakeFiles/udp_server.dir/src/main.c.o
udp_server: CMakeFiles/udp_server.dir/src/error.c.o
udp_server: CMakeFiles/udp_server.dir/src/conversion.c.o
udp_server: CMakeFiles/udp_server.dir/src/copy.c.o
udp_server: CMakeFiles/udp_server.dir/build.make
udp_server: CMakeFiles/udp_server.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/chika/Documents/a4/server/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking C executable udp_server"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/udp_server.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/udp_server.dir/build: udp_server
.PHONY : CMakeFiles/udp_server.dir/build

CMakeFiles/udp_server.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/udp_server.dir/cmake_clean.cmake
.PHONY : CMakeFiles/udp_server.dir/clean

CMakeFiles/udp_server.dir/depend:
	cd /home/chika/Documents/a4/server/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/chika/Documents/a4/server /home/chika/Documents/a4/server /home/chika/Documents/a4/server/build /home/chika/Documents/a4/server/build /home/chika/Documents/a4/server/build/CMakeFiles/udp_server.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/udp_server.dir/depend

