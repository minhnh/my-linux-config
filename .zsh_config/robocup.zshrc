#export CPATH="/opt/Neurotec_Biometric_6_0_SDK/Include${CPATH:+:${CPATH}}"
#export LIBRARY_PATH="/opt/Neurotec_Biometric_6_0_SDK/Lib/Linux_x86_64${LIBRARY_PATH:+:${LIBRARY_PATH}}"
#export LD_LIBRARY_PATH="/opt/Neurotec_Biometric_6_0_SDK/Lib/Linux_x86_64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}"
export ROS_DISTRO=kinetic
export ROBOT=cob3-1
export ROBOT_ENV=brsu-c069
export ROS_WS=$HOME/catkin_ws/$ROS_DISTRO
#source $ROS_WS/devel/setup.zsh
export ROS_WORKSPACE=$ROS_WS
export ROSCONSOLE_FORMAT='[${severity}] [${time}]: [${node}] ${message}'
#export ROS_MASTER_URI="http://cob3-1-pc1:11311"

#alias ssh_ws="ssh minh@192.168.50.21"
#alias ssh_pc1="ssh minh@192.168.1.101"
#alias ssh_pc2="ssh minh@192.168.1.102"
#alias ssh_pc3="ssh minh@192.168.1.103"


