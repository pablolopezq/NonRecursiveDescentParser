cmake_minimum_required (VERSION 3.0)
project (parser)

set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

include_directories(${CMAKE_CURRENT_BINARY_DIR})
include_directories(${PROJECT_SOURCE_DIR})
  
add_executable(${PROJECT_NAME}
                    src/ExprLexer.cpp
                    src/Parser.cpp
                    src/main.cpp)

target_link_libraries(${PROJECT_NAME} -static-libgcc -static-libstdc++)