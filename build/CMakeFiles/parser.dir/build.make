# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_SOURCE_DIR = /home/pablo/Documents/Clases/Compiladores1/Exercises/SintacticoDescNoRecursivo

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pablo/Documents/Clases/Compiladores1/Exercises/SintacticoDescNoRecursivo/build

# Include any dependencies generated for this target.
include CMakeFiles/parser.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/parser.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/parser.dir/flags.make

CMakeFiles/parser.dir/src/ExprLexer.cpp.o: CMakeFiles/parser.dir/flags.make
CMakeFiles/parser.dir/src/ExprLexer.cpp.o: ../src/ExprLexer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pablo/Documents/Clases/Compiladores1/Exercises/SintacticoDescNoRecursivo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/parser.dir/src/ExprLexer.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/parser.dir/src/ExprLexer.cpp.o -c /home/pablo/Documents/Clases/Compiladores1/Exercises/SintacticoDescNoRecursivo/src/ExprLexer.cpp

CMakeFiles/parser.dir/src/ExprLexer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/parser.dir/src/ExprLexer.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pablo/Documents/Clases/Compiladores1/Exercises/SintacticoDescNoRecursivo/src/ExprLexer.cpp > CMakeFiles/parser.dir/src/ExprLexer.cpp.i

CMakeFiles/parser.dir/src/ExprLexer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/parser.dir/src/ExprLexer.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pablo/Documents/Clases/Compiladores1/Exercises/SintacticoDescNoRecursivo/src/ExprLexer.cpp -o CMakeFiles/parser.dir/src/ExprLexer.cpp.s

CMakeFiles/parser.dir/src/ExprLexer.cpp.o.requires:

.PHONY : CMakeFiles/parser.dir/src/ExprLexer.cpp.o.requires

CMakeFiles/parser.dir/src/ExprLexer.cpp.o.provides: CMakeFiles/parser.dir/src/ExprLexer.cpp.o.requires
	$(MAKE) -f CMakeFiles/parser.dir/build.make CMakeFiles/parser.dir/src/ExprLexer.cpp.o.provides.build
.PHONY : CMakeFiles/parser.dir/src/ExprLexer.cpp.o.provides

CMakeFiles/parser.dir/src/ExprLexer.cpp.o.provides.build: CMakeFiles/parser.dir/src/ExprLexer.cpp.o


CMakeFiles/parser.dir/src/Parser.cpp.o: CMakeFiles/parser.dir/flags.make
CMakeFiles/parser.dir/src/Parser.cpp.o: ../src/Parser.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pablo/Documents/Clases/Compiladores1/Exercises/SintacticoDescNoRecursivo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/parser.dir/src/Parser.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/parser.dir/src/Parser.cpp.o -c /home/pablo/Documents/Clases/Compiladores1/Exercises/SintacticoDescNoRecursivo/src/Parser.cpp

CMakeFiles/parser.dir/src/Parser.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/parser.dir/src/Parser.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pablo/Documents/Clases/Compiladores1/Exercises/SintacticoDescNoRecursivo/src/Parser.cpp > CMakeFiles/parser.dir/src/Parser.cpp.i

CMakeFiles/parser.dir/src/Parser.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/parser.dir/src/Parser.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pablo/Documents/Clases/Compiladores1/Exercises/SintacticoDescNoRecursivo/src/Parser.cpp -o CMakeFiles/parser.dir/src/Parser.cpp.s

CMakeFiles/parser.dir/src/Parser.cpp.o.requires:

.PHONY : CMakeFiles/parser.dir/src/Parser.cpp.o.requires

CMakeFiles/parser.dir/src/Parser.cpp.o.provides: CMakeFiles/parser.dir/src/Parser.cpp.o.requires
	$(MAKE) -f CMakeFiles/parser.dir/build.make CMakeFiles/parser.dir/src/Parser.cpp.o.provides.build
.PHONY : CMakeFiles/parser.dir/src/Parser.cpp.o.provides

CMakeFiles/parser.dir/src/Parser.cpp.o.provides.build: CMakeFiles/parser.dir/src/Parser.cpp.o


CMakeFiles/parser.dir/src/main.cpp.o: CMakeFiles/parser.dir/flags.make
CMakeFiles/parser.dir/src/main.cpp.o: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pablo/Documents/Clases/Compiladores1/Exercises/SintacticoDescNoRecursivo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/parser.dir/src/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/parser.dir/src/main.cpp.o -c /home/pablo/Documents/Clases/Compiladores1/Exercises/SintacticoDescNoRecursivo/src/main.cpp

CMakeFiles/parser.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/parser.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pablo/Documents/Clases/Compiladores1/Exercises/SintacticoDescNoRecursivo/src/main.cpp > CMakeFiles/parser.dir/src/main.cpp.i

CMakeFiles/parser.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/parser.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pablo/Documents/Clases/Compiladores1/Exercises/SintacticoDescNoRecursivo/src/main.cpp -o CMakeFiles/parser.dir/src/main.cpp.s

CMakeFiles/parser.dir/src/main.cpp.o.requires:

.PHONY : CMakeFiles/parser.dir/src/main.cpp.o.requires

CMakeFiles/parser.dir/src/main.cpp.o.provides: CMakeFiles/parser.dir/src/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/parser.dir/build.make CMakeFiles/parser.dir/src/main.cpp.o.provides.build
.PHONY : CMakeFiles/parser.dir/src/main.cpp.o.provides

CMakeFiles/parser.dir/src/main.cpp.o.provides.build: CMakeFiles/parser.dir/src/main.cpp.o


# Object files for target parser
parser_OBJECTS = \
"CMakeFiles/parser.dir/src/ExprLexer.cpp.o" \
"CMakeFiles/parser.dir/src/Parser.cpp.o" \
"CMakeFiles/parser.dir/src/main.cpp.o"

# External object files for target parser
parser_EXTERNAL_OBJECTS =

parser: CMakeFiles/parser.dir/src/ExprLexer.cpp.o
parser: CMakeFiles/parser.dir/src/Parser.cpp.o
parser: CMakeFiles/parser.dir/src/main.cpp.o
parser: CMakeFiles/parser.dir/build.make
parser: CMakeFiles/parser.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pablo/Documents/Clases/Compiladores1/Exercises/SintacticoDescNoRecursivo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable parser"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/parser.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/parser.dir/build: parser

.PHONY : CMakeFiles/parser.dir/build

CMakeFiles/parser.dir/requires: CMakeFiles/parser.dir/src/ExprLexer.cpp.o.requires
CMakeFiles/parser.dir/requires: CMakeFiles/parser.dir/src/Parser.cpp.o.requires
CMakeFiles/parser.dir/requires: CMakeFiles/parser.dir/src/main.cpp.o.requires

.PHONY : CMakeFiles/parser.dir/requires

CMakeFiles/parser.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/parser.dir/cmake_clean.cmake
.PHONY : CMakeFiles/parser.dir/clean

CMakeFiles/parser.dir/depend:
	cd /home/pablo/Documents/Clases/Compiladores1/Exercises/SintacticoDescNoRecursivo/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pablo/Documents/Clases/Compiladores1/Exercises/SintacticoDescNoRecursivo /home/pablo/Documents/Clases/Compiladores1/Exercises/SintacticoDescNoRecursivo /home/pablo/Documents/Clases/Compiladores1/Exercises/SintacticoDescNoRecursivo/build /home/pablo/Documents/Clases/Compiladores1/Exercises/SintacticoDescNoRecursivo/build /home/pablo/Documents/Clases/Compiladores1/Exercises/SintacticoDescNoRecursivo/build/CMakeFiles/parser.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/parser.dir/depend

