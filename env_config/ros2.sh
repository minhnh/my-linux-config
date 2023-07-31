export ROS_VERSION=2
export ROS_PYTHON_VERSION=3
export ROS_DISTRO=humble
export ROS_DOMAIN_ID=0
export ROS_WS=$HOME/ros2_ws/$ROS_DISTRO
source /opt/ros/$ROS_DISTRO/setup.zsh
source $ROS_WS/install/local_setup.zsh
source /usr/share/colcon_cd/function/colcon_cd.sh
source /usr/share/colcon_argcomplete/hook/colcon-argcomplete.zsh

