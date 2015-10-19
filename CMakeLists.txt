cmake_minimum_required(VERSION 2.8)

project(HDR_COZOT)

find_package(OpenCV REQUIRED)

set(${PROJECT_NAME}_CPP
	src/gsolve.cpp
	src/reference.cpp
)

set(${PROJECT_NAME}_H
)

add_executable(
	${PROJECT_NAME}
	${${PROJECT_NAME}_CPP}
	${${PROJECT_NAME}_H}
)

target_link_libraries(${PROJECT_NAME} ${OpenCV_LIBS})
