#!/bin/bash

# Create catkin_ws
source /opt/ros/kinetic/setup.bash
mkdir -p ~/catkin_ws/src
cd ~/catkin_ws
catkin_make

# Install src
cd ~/catkin_ws/src
git clone https://github.com/tu-darmstadt-ros-pkg/hector_slam.git
git clone https://github.com/ros-drivers/urg_node.git
git clone https://github.com/avoss19/bsm_slam.git

# Compile/install
cd ~/catkin_ws
rosdep install --from-paths src --ignore-src --rosdistro kinetic
catkin_make

# Install scripts
cd ~/catkin_ws
curl -O https://raw.githubusercontent.com/avoss19/LIDAR/master/hostLidar.bash
curl -O https://raw.githubusercontent.com/avoss19/LIDAR/master/httpHost.py
