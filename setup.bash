#!/bin/bash

# Install Packages
sudo apt-get install ros-kinetic-hector-*
sudo apt-get install ros-kinetic-urg-*

# Install bsm_slam
cd ~/catkin_ws/src
git clone https://github.com/avoss19/bsm_slam.git
cd ~/catkin_ws
rosdep install --from-paths src --ignore-src --rosdistro kinetic
catkin_make

# Download Scripts
cd ~
git clone https://github.com/avoss19/LIDAR.git
