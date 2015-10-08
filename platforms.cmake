# Select target platform
IF(WIN32)
    SET(PLATFORM "win_32_64")
ENDIF(WIN32)
    

# Include target-specific definitions
INCLUDE_DIRECTORIES(${PROJECT_CONFIGURATION}/platforms/${PLATFORM})
ADD_SUBDIRECTORY(${PROJECT_CONFIGURATION}/platforms/${PLATFORM})