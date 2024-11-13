ROS_WS_ROOT="$HOME/ws/ros"
ROS_DISTRO="jazzy"
# zsh handles new lines differently
NEWLINE=$'\n'

# fix argcomplete for ros2 & colcon in zsh
# see https://github.com/ros2/ros2cli/issues/534
fix_zsh_autocomplete () {
    eval "$(register-python-argcomplete ros2)"
    eval "$(register-python-argcomplete colcon)"
}

# source worskapce with just system underlay
source_ros_ws () {
    source "/opt/ros/$ROS_DISTRO/setup.zsh"
    export ROS_WS_HOME="$ROS_WS_ROOT/$ROS_DISTRO/$1"
    alias roscd="cd $ROS_WS_HOME/src"
    source "$ROS_WS_HOME/install/setup.zsh"
    fix_zsh_autocomplete
    export PS1="$NEWLINE($ROS_DISTRO/$1)$PS1"
}
