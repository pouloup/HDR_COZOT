cmake_minimum_required(VERSION 2.8)
list( APPEND CMAKE_CXX_FLAGS "-std=c++0x ${CMAKE_CXX_FLAGS} -O2 -g")

project(HDR_COZOT)

find_package(OpenCV REQUIRED)

include_directories(include/)

set(${PROJECT_NAME}_CPP
	src/gsolve.cpp
	src/reference.cpp
	src/main.cpp
	src/exif.cpp
)

set(${PROJECT_NAME}_H
	include/exif.h
)

add_executable(
	${PROJECT_NAME}
	${${PROJECT_NAME}_CPP}
	${${PROJECT_NAME}_H}
)

target_link_libraries(${PROJECT_NAME} ${OpenCV_LIBS})
