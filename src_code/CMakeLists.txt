include_directories(${PROJECT_SOURCE_DIR}/MyLib)

set(EXECUTABLE_OUTPUT_PATH ${PROJECT_BINARY_DIR}/bin)

find_package(Boost REQUIRED)
include_directories(${Boost_INCLUDE_DIRS})

find_package(OpenCV REQUIRED)
include_directories(${OpenCV_INCLUDE_DIRS})

aux_source_directory(./ DIR_SRC)

include_directories(/usr/lib/)
include_directories(/usr/local/lib/)

add_executable(work ${DIR_SRC})
target_link_libraries(work Mylib)
target_link_libraries(work ${Boost_LIBRARIES})
target_link_libraries(work ${OpenCV_LIBS})
target_link_libraries(work -lpthread)
