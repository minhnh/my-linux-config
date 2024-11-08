ROS_WS_HOME="$HOME/ws/ros"
ROS_DISTRO="jazzy"

# fix argcomplete for ros2 & colcon in zsh
# see https://github.com/ros2/ros2cli/issues/534
fix_zsh_autocomplete () {
    eval "$(register-python-argcomplete ros2)"
    eval "$(register-python-argcomplete colcon)"
}

# source worskapce with just system underlay
source_ros_ws () {
    source "/opt/ros/$ROS_DISTRO/setup.zsh"
    source "$ROS_WS_HOME/$ROS_DISTRO/$1/install/setup.zsh"
    fix_zsh_autocomplete
}
