#!/bin/bash
# Copyright (c) 2013-2015, Rethink Robotics
# All rights reserved.

# This file is to be used in the *root* of your Catkin workspace.

# This is a convenient script which will set up your ROS environment and
# should be executed with every new instance of a shell in which you plan on
# working with Baxter.

# Clear any previously set your_ip/your_hostname
unset your_ip
unset your_hostname

# Specify Baxter's hostname
baxter_hostname="192.168.1.101"

# Set *Either* your computers ip address or hostname. Please note if using
# your_hostname that this must be resolvable to Baxter.
your_ip="192.168.1.100"
#your_hostname="my_computer.local"

#-----------------------------------------------------------------------------#

if [[ "${1}" == "sim" ]]; then
	export ROS_IP=127.0.0.1
	export ROS_MASTER_URI=http://127.0.0.1:11311
elif [[ "${1}" == "real" ]]; then
	export ROS_IP=${your_ip}
	export ROS_MASTER_URI="http://${baxter_hostname}:11311"
else
	echo "specify argument real or sim"
fi

# vim: noet
