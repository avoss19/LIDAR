#!/bin/bash

# Create PNG of Map
while true;
do
rosrun map_server map_saver -f lidar
convert lidar.pgm lidar.png
sleep 1
done
