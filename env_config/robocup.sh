export ROS_DISTRO=melodic
#export ROBOT=cob3-1
#export ROBOT_ENV=brsu-c069
export ROS_WS=$HOME/catkin_ws/$ROS_DISTRO
#export ROS_WS=$HOME/catkin_ws/gqcnn_test
source $ROS_WS/devel/setup.zsh
export ROS_WORKSPACE=$ROS_WS
export ROSCONSOLE_FORMAT='[${severity}] [${time}]: [${node}] ${message}'

