NET_DEVICE=enp0s3
export ROS_IP=$(/sbin/ip -o -4 addr list ${NET_DEVICE} | awk '{print $4}' | cut -d/ -f1)
export ROS_DISTRO=melodic
#export ROBOT=cob3-1
#export ROBOT_ENV=brsu-c069
export ROS_WS=$HOME/catkin_ws/$ROS_DISTRO
source $ROS_WS/devel/setup.zsh
export ROS_WORKSPACE=$ROS_WS
export ROSCONSOLE_FORMAT='[${severity}] [${time}]: [${node}] ${message}'

