# LIDAR SLAM

Setup for BSM's robot with a LIDAR sensor utilizing [hector_slam](https://github.com/tu-darmstadt-ros-pkg/hector_slam) & [urg_node](https://github.com/ros-drivers/urg_node)

## Run
```bash
$ bash ~/LIDAR/run.bash
```

or

```bash
$ cd ~/LIDAR
$ source /opt/ros/kinetic/setup.bash
$ python httpHost.py &>/dev/null &
$ roslaunch hector_slam_launch hector_hokuyo.launch &
$ bash hostLidar.bash &>/dev/null &
```

## Easy Install

Install ROS Kinetic:
  - [Raspberry Pi Ubuntu ROS Image](https://downloads.ubiquityrobotics.com/pi.html)

Install:

```bash
$ wget https://raw.githubusercontent.com/avoss19/LIDAR/master/setup.bash
$ sudo bash setup.bash
```

## Normal Install

Install ROS Kinetic:
  - [Raspberry Pi Ubuntu ROS Image](https://downloads.ubiquityrobotics.com/pi.html)

Install Packages:

```bash
$ sudo apt-get install ros-kinetic-hector-*
$ sudo apt-get install ros-kinetic-urg-*
```

Create catkin_ws (Skip if using Pi ROS Image Above):

```bash
$ source /opt/ros/melodic/setup.bash
$ mkdir -p ~/catkin_ws/src
$ cd ~/catkin_ws/
$ catkin_make
```

Install bsm_slam:

```bash
$ cd ~/catkin_ws/src
$ git clone https://github.com/avoss19/bsm_slam.git
$ cd ~/catkin_ws
$ rosdep install --from-paths src --ignore-src --rosdistro kinetic
$ catkin_make
```

Download Scripts:

```bash
$ cd ~
$ git clone https://github.com/avoss19/LIDAR.git
```
