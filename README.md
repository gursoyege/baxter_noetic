# Baxter Noetic
## Setup
Ubuntu 20.04
ROS Noetic
Python 3.8
## Install
Clone repository with submodules:
```
git clone --recursive https://github.com/gursoyege/baxter-noetic
```

Install dependencies:
```
bash dependencies/install_dependencies.sh
```
then build with:
```
catkin build
```
or 
```
catkin_make
```
## Using simulator
### Set communication
```
export ROS_IP=127.0.0.1
export ROS_MASTER_URI=http://127.0.0.1:11311
```
or run:
```
. ./baxter_ip.sh sim
```
### Launch Gazebo + Moveit + Rviz + Baxter server
```
roslaunch baxter_launcher baxter_sim.launch
```
### Enable robot
```
rosrun baxter_rools enable_robot.py -e
```
Otherwise robot will not move.

If there is a problem reset and re-enable robot:
```
rosrun baxter_tools enable_robot.py -r
rosrun baxter_tools enable_robot.py -e
```
## Using Real Robot
### Set communication
```
export ROS_IP=${your_ip_adress}
export ROS_MASTER_URI=http://${robot_ip_adress}:11311
```
or modify IP adresses in "baxter.sh" and run:
```
. ./baxter_ip.sh real
```
### Launch Gazebo + Moveit + RViz + Baxter server
```
roslaunch baxter_launcher baxter_real.launch
```
Plan and execute your trajectory in RViz.
### Enable robot
```
rosrun baxter_tools enable_robot.py -e
```
Otherwise robot will not move.

If there is a problem reset and re-enable robot:
```
rosrun baxter_tools enable_robot.py -r
rosrun baxter_tools enable_robot.py -e
```
Plan and execute your trajectory in RViz.
