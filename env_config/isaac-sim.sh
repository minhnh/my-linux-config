ISAAC_VER='4.2.0'
ISAAC_SIM_DIR="/media/ext4-data/shared/nvidia/ov/pkg/isaac-sim-${ISAAC_VER}"
ISAAC_PYTHON_SH="${ISAAC_SIM_DIR}/python.sh"
alias isaacsim-python-sh="${ISAAC_PYTHON_SH}"
alias isaacsim-pip="${ISAAC_PYTHON_SH} -m pip"
alias isaacsim-ipython="${ISAAC_PYTHON_SH} ${ISAAC_SIM_DIR}/kit/python/bin/ipython"
alias isaacsim-behave="${ISAAC_PYTHON_SH} ${ISAAC_SIM_DIR}/kit/python/bin/behave"
