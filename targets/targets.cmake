#Set constants
SET(UTIL_TGT_OS_WINDOWS 11)
SET(UTIL_TGT_OS_LINUX 12)

SET(UTIL_TGT_COMP_MSVC 21)
SET(UTIL_TGT_COMP_MINGM 22)

ADD_DEFINITIONS(/DUTILITIES_OS_WINDOWS=${UTIL_TGT_OS_WINDOWS})
ADD_DEFINITIONS(/DUTILITIES_OS_LINUX=${UTIL_TGT_OS_LINUX})

ADD_DEFINITIONS(/DUTILITIES_COMPIELR_MSVC=${UTIL_TGT_COMP_MSVC})
ADD_DEFINITIONS(/DUTILITIES_COMPIELR_MINGM=${UTIL_TGT_COMP_MINGM})


# Select target platform
IF(WIN32)
    MESSAGE("Platform: Windows")
	
	# Lib names
    SET(DL_IMPL "DL_Windows")
    SET(THREAD_IMPL "Thread_Windows")
    SET(WS_IMPL "WS_Windows")
	
	# Impl paths
    SET(DL_IMPL_DIR "DL_Windows")
    SET(THREAD_IMPL_DIR "Thread_Windows")
    SET(WS_IMPL_DIR "WS_Windows")
	
	    
    IF(MSVC)
        MESSAGE("Toolchain: Visual Studio")
        SET(TARGET "vs")
	
		# DLL paths
		SET(THREAD_IMPL_PATH "Thread_Windows.dll")
		SET(WS_IMPL_PATH "WS_Windows.dll")
    ENDIF(MSVC)

    IF(MINGW)
        MESSAGE("Toolchain: MinGW")
        SET(TARGET "mingw")
    ENDIF(MINGW)
	
	# Defines
	ADD_DEFINITIONS(-DTHREAD_IMPL="${THREAD_IMPL_PATH}")
	ADD_DEFINITIONS(-DWS_IMPL="${WS_IMPL_PATH}")
ENDIF(WIN32)
    

# Include target-specific definitions
include(${PROJECT_CONFIGURATION}/targets/${TARGET}/target.cmake)
