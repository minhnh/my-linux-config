export_isaac_ros () {
    ISAAC_SIM_ROOT=$1
    if [ -z "$ISAAC_SIM_ROOT" ]; then
        ISAAC_SIM_ROOT="/media/ext4-data/shared/nvidia/isaacsim/current"
    fi
    if [ ! -d "$ISAAC_SIM_ROOT" ]; then
        echo "IsaacSim root '$ISAAC_SIM_ROOT' does not exist."
        return 1
    fi
    ISAAC_SIM_ROOT=$(realpath -s "$ISAAC_SIM_ROOT")
    echo "Using IsaacSim in: ${ISAAC_SIM_ROOT}"
    ISAAC_SIM_VERSION=$(<"$ISAAC_SIM_ROOT/VERSION")
    ISAAC_SIM_MAJOR=${ISAAC_SIM_VERSION%%.*}
    echo "Isaac Sim major version: $ISAAC_SIM_MAJOR"

    ROS_VER=$2
    if [ -z "$ROS_VER" ]; then
      ROS_VER="jazzy"
    fi
    export ROS_DISTRO="$ROS_VER"
    echo "ROS version: $ROS_DISTRO"

    ISAAC_PYTHON_SH="${ISAAC_SIM_ROOT}/python.sh"
    alias isaacsim="${ISAAC_SIM_ROOT}/isaac-sim.sh"
    alias isaacsim-python-sh="${ISAAC_PYTHON_SH}"
    alias isaacsim-pip="${ISAAC_PYTHON_SH} -m pip"
    alias isaacsim-ipython="${ISAAC_PYTHON_SH} ${ISAAC_SIM_ROOT}/kit/python/bin/ipython"
    alias isaacsim-behave="${ISAAC_PYTHON_SH} ${ISAAC_SIM_ROOT}/kit/python/bin/behave"

    export RMW_IMPLEMENTATION=rmw_fastrtps_cpp
    if (( ISAAC_SIM_MAJOR >= 6 )); then
        source "/opt/ros/${ROS_DISTRO}/setup.zsh"
    else
        export LD_LIBRARY_PATH="${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}${ISAAC_SIM_ROOT}/exts/isaacsim.ros2.bridge/${ROS_DISTRO}/lib"
    fi
}
