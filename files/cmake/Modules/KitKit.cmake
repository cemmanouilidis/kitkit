set(CMAKE_C_COMPILER   "__KITKIT_PREFIX__/bin/clang")
set(CMAKE_CXX_COMPILER "__KITKIT_PREFIX__/bin/clang++")

set(CMAKE_CXX_FLAGS "-g")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=gnu99")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fconstant-string-class=NSConstantString")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fmessage-length=0")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fblocks")

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -I__KITKIT_PREFIX__/include")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fobjc-runtime=gnustep")

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fobjc-arc")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Xclang -fobjc-default-synthesize-properties")

set(KITKIT_LINK_LIBRARIES "-rdynamic -pthread -shared-libgcc -fexceptions")
set(KITKIT_LINK_LIBRARIES "${KITKIT_LINK_LIBRARIES} -L__KITKIT_PREFIX__/lib")
set(KITKIT_LINK_LIBRARIES "${KITKIT_LINK_LIBRARIES} -lobjc -lm -lgnustep-base")
