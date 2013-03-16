set(KITKIT_HOME "__KITKIT_PREFIX__")

set(CMAKE_C_COMPILER   "${KITKIT_HOME}/bin/clang")
set(CMAKE_CXX_COMPILER "${KITKIT_HOME}/bin/clang++")

set(CMAKE_CXX_FLAGS "-g")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=gnu99")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fconstant-string-class=NSConstantString")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fmessage-length=0")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fblocks")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fobjc-arc")

if("${CMAKE_SYSTEM}" MATCHES "Linux")
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -I${KITKIT_HOME}/include")
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fobjc-runtime=gnustep")
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Xclang -fobjc-default-synthesize-properties")
    
    set(CMAKE_EXE_LINKER_FLAGS "-rdynamic -pthread -shared-libgcc -fexceptions")
    set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -L${KITKIT_HOME}/lib")
    set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -lobjc -lm -lgnustep-base")
else()
    set(XCODE_DEVELOPER /Applications/Xcode.app/Contents/Developer)
    set(XCODE_TOOLS ${XCODE_DEVELOPER}/Tools)
    set(XCODE_FRAMEWORKS ${XCODE_DEVELOPER}/Library/Frameworks)

    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -F${XCODE_FRAMEWORKS}")
    
    set(CMAKE_EXE_LINKER_FLAGS "-framework Foundation")
endif()
