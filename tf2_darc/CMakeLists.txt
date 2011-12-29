cmake_minimum_required(VERSION 2.8)
project(tf2_darc)

find_package(Boost COMPONENTS thread signals)
find_package(ROS REQUIRED COMPONENTS catkin roscpp_serialization std_msgs roscpp_traits rostime cpp_common rosconsole tf2)
find_package(darc)

include_directories(include)
include_directories(${ROS_INCLUDE_DIRS})
include_directories(${darc_INCLUDE_DIRS})

add_library(tf2_darc SHARED
  src/transform_listener.cpp src/transform_broadcaster.cpp)
#  src/buffer.cpp src/transform_listener.cpp src/buffer_client.cpp src/buffer_server.cpp
#  src/transform_broadcaster.cpp src/static_transform_broadcaster.cpp)

target_link_libraries(tf2_darc tf2)


