# Export config directory
if [ -z $ENV_CONFIG_DIR ] ; then
    export ENV_CONFIG_DIR="$(dirname $0)"
fi
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
    SCRIPT_NAME=$0
    ROS_WS_ROOT="$HOME/ws/ros2"
    ROS_DISTRO="kilted"

    usage() {
        echo "Soruce ROS workspace in '$ROS_WS_ROOT'$NEWLINE"
        echo "usage: $SCRIPT_NAME <ros_ws_name> <(optional)distro_name>"
    }

    if [ $# -lt 1 ] ; then
        echo "no argument provided"
        usage
        return 1
    fi

    ENV_NAME=$1

    if [ $# -gt 1 ] ; then
        ROS_DISTRO=$2
    fi

    ROS_WS_HOME="$ROS_WS_ROOT/$ROS_DISTRO/$ENV_NAME"

    VIRT_ENV_ACTIVATE="$ROS_WS_HOME/venv/bin/activate"
    if [ ! -f "$VIRT_ENV_ACTIVATE" ] ; then
        echo "No Python virtual environment found at $VIRT_ENV_ACTIVATE"
    else
        source "$VIRT_ENV_ACTIVATE"
    fi

    SETUP_FILE="$ROS_WS_HOME/install/setup.zsh"
    if [ ! -f $SETUP_FILE ] ; then
        echo "setup file doesn't exit: $SETUP_FILE"
        return 1
    fi

    source "$ROS_WS_HOME/install/setup.zsh"
    source "$ENV_CONFIG_DIR/ros2cd/roscd.sh"
    export ROS_WS_HOME
    export ROS_DISTRO
    fix_zsh_autocomplete
    export PS1="$NEWLINE($ROS_DISTRO/$ENV_NAME)$PS1"
}
