cmake_minimum_required(VERSION 2.8)
project(KitKitHello)

include(KitKit)

file(GLOB_RECURSE SRC src/*.m)

add_executable(kitkit-hello ${SRC})

target_link_libraries(
    kitkit-hello
    ${KITKIT_LINK_LIBRARIES}
)
