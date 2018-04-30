#!/bin/bash

while true;
do
rosrun map_server map_saver -f lidar
convert lidar.pgm lidar.png
done
