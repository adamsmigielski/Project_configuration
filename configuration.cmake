SET(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
SET(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
SET(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)


# Include target specific stuff
INCLUDE(${PROJECT_CONFIGURATION}/targets/targets.cmake)
INCLUDE(${PROJECT_CONFIGURATION}/platforms.cmake)