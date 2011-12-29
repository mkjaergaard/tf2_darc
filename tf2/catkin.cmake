cmake_minimum_required(VERSION 2.8)
project(tf2)

find_package(Boost COMPONENTS thread signals)
find_package(ROS REQUIRED COMPONENTS catkin roscpp_serialization std_msgs roscpp_traits rostime cpp_common rosconsole)

include_directories(include)
include_directories(${ROS_INCLUDE_DIRS})

add_library(tf2 SHARED src/cache.cpp src/buffer_core.cpp src/static_cache.cpp)
target_link_libraries(tf2 ${Boost_LIBRARIES})

install_cmake_infrastructure(tf2
  INCLUDE_DIRS include)
