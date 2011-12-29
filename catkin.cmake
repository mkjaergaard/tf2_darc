cmake_minimum_required(VERSION 2.8)
project(geometry_experimental)

find_package(catkin REQUIRED)
find_package(ROS COMPONENTS genmsg roscpp_serialization std_msgs geometry_msgs)
# find_package(ROS COMPONENTS
#  rostime cpp_common roscpp_serialization roscpp_traits # serialization
#  roscpp rosconsole                                     # roscpp
#  nav_msgs std_msgs                                     # messages
#  )

add_subdirectory(tf2_msgs)
add_subdirectory(tf2)
add_subdirectory(tf2_darc)
