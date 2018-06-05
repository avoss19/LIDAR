#!/bin/bash

source /opt/ros/kinetic/setup.bash # Setup ROS
python httpHost.py &>/dev/null & # Host HTTP w/ Python
roslaunch hector_slam_launch hector_hokuyo.launch & # Start Mapping
bash hostLidar.bash &>/dev/null & # Create PNG of Map
