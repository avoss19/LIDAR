# LIDAR SLAM

Setup for BSM's robot with a LIDAR sensor utilizing [hector_slam](https://github.com/tu-darmstadt-ros-pkg/hector_slam)

## Run

- Run:

```bash
$ source /opt/ros/kinetic/setup.bash
$ python httpHost.py
$ roslaunch hector_slam_launch hector_hokuyo.launch
$ bash hostLidar.bash
```

- Run from source:

```Bash
$ cd catkin_ws
$ source devel/setup.bash
$ python httpHost.py
$ roslaunch bsm_slam hector_hokuyo.launch
$ bash hostLidar.bash
```

## Install

- Install Packages:

```bash
$ sudo apt-get install ros-kinetic-hector-*
$ sudo apt-get install ros-kinetic-urg-*
```

- Download launch files:

```bash
$ source /opt/ros/kinetic/setup.bash
$ roscd hector_slam_launch
$ curl -O https://raw.githubusercontent.com/avoss19/bsm_slam/master/launch/default_mapping.launch
$ curl -O https://github.com/avoss19/bsm_slam/raw/master/launch/hector_hokuyo.launch
```

- Download Scripts:

```bash
$ cd catkin_ws
$ curl -O https://raw.githubusercontent.com/avoss19/LIDAR/master/hostLidar.bash
$ curl -O https://raw.githubusercontent.com/avoss19/LIDAR/master/httpHost.py
```



## Install from Source

- Install ROS Kinetic
  - [Raspberry Pi Ubuntu ROS Image](https://downloads.ubiquityrobotics.com/pi.html)


- Create [catkin_ws](http://wiki.ros.org/catkin/Tutorials/create_a_workspace) (Skip this step if using Raspberry Pi Image)
- Clone packages to src of catkin_ws - [hector_slam](https://github.com/tu-darmstadt-ros-pkg/hector_slam), [urg_node](https://github.com/ros-drivers/urg_node), [bsm_slam](https://github.com/avoss19/bsm_slam)
- Install packages from source:

```bash
$ cd catkin_ws
$ rosdep install --from-paths src --ignore-src --rosdistro kinetic
$ catkin_make
```

- Download Scripts:

```bash
$ cd catkin_ws
$ curl -O https://raw.githubusercontent.com/avoss19/LIDAR/master/hostLidar.bash
$ curl -O https://raw.githubusercontent.com/avoss19/LIDAR/master/httpHost.py
```
