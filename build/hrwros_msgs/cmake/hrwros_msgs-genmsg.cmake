# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "hrwros_msgs: 11 messages, 1 services")

set(MSG_I_FLAGS "-Ihrwros_msgs:/home/lxu9/hrwros_ws/src/hrwros/hrwros_msgs/msg;-Ihrwros_msgs:/home/lxu9/hrwros_ws/devel/.private/hrwros_msgs/share/hrwros_msgs/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg;-Itrajectory_msgs:/opt/ros/melodic/share/trajectory_msgs/cmake/../msg;-Imoveit_msgs:/opt/ros/melodic/share/moveit_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/melodic/share/actionlib_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/melodic/share/sensor_msgs/cmake/../msg;-Ishape_msgs:/opt/ros/melodic/share/shape_msgs/cmake/../msg;-Iobject_recognition_msgs:/opt/ros/melodic/share/object_recognition_msgs/cmake/../msg;-Ioctomap_msgs:/opt/ros/melodic/share/octomap_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(hrwros_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/lxu9/hrwros_ws/devel/.private/hrwros_msgs/share/hrwros_msgs/msg/CounterWithDelayActionGoal.msg" NAME_WE)
add_custom_target(_hrwros_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hrwros_msgs" "/home/lxu9/hrwros_ws/devel/.private/hrwros_msgs/share/hrwros_msgs/msg/CounterWithDelayActionGoal.msg" "actionlib_msgs/GoalID:hrwros_msgs/CounterWithDelayGoal:std_msgs/Header"
)

get_filename_component(_filename "/home/lxu9/hrwros_ws/src/hrwros/hrwros_msgs/msg/ObjectDetection.msg" NAME_WE)
add_custom_target(_hrwros_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hrwros_msgs" "/home/lxu9/hrwros_ws/src/hrwros/hrwros_msgs/msg/ObjectDetection.msg" "geometry_msgs/Pose:geometry_msgs/Point:geometry_msgs/Quaternion:std_msgs/Header"
)

get_filename_component(_filename "/home/lxu9/hrwros_ws/src/hrwros/hrwros_msgs/msg/TargetToolPoses.msg" NAME_WE)
add_custom_target(_hrwros_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hrwros_msgs" "/home/lxu9/hrwros_ws/src/hrwros/hrwros_msgs/msg/TargetToolPoses.msg" "geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Point:geometry_msgs/PoseStamped:std_msgs/Header"
)

get_filename_component(_filename "/home/lxu9/hrwros_ws/src/hrwros/hrwros_msgs/srv/ConvertMetresToFeet.srv" NAME_WE)
add_custom_target(_hrwros_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hrwros_msgs" "/home/lxu9/hrwros_ws/src/hrwros/hrwros_msgs/srv/ConvertMetresToFeet.srv" ""
)

get_filename_component(_filename "/home/lxu9/hrwros_ws/devel/.private/hrwros_msgs/share/hrwros_msgs/msg/CounterWithDelayAction.msg" NAME_WE)
add_custom_target(_hrwros_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hrwros_msgs" "/home/lxu9/hrwros_ws/devel/.private/hrwros_msgs/share/hrwros_msgs/msg/CounterWithDelayAction.msg" "actionlib_msgs/GoalID:hrwros_msgs/CounterWithDelayGoal:actionlib_msgs/GoalStatus:hrwros_msgs/CounterWithDelayActionResult:hrwros_msgs/CounterWithDelayActionGoal:hrwros_msgs/CounterWithDelayFeedback:std_msgs/Header:hrwros_msgs/CounterWithDelayResult:hrwros_msgs/CounterWithDelayActionFeedback"
)

get_filename_component(_filename "/home/lxu9/hrwros_ws/src/hrwros/hrwros_msgs/msg/SensorInformation.msg" NAME_WE)
add_custom_target(_hrwros_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hrwros_msgs" "/home/lxu9/hrwros_ws/src/hrwros/hrwros_msgs/msg/SensorInformation.msg" "sensor_msgs/Range:std_msgs/Header"
)

get_filename_component(_filename "/home/lxu9/hrwros_ws/devel/.private/hrwros_msgs/share/hrwros_msgs/msg/CounterWithDelayActionResult.msg" NAME_WE)
add_custom_target(_hrwros_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hrwros_msgs" "/home/lxu9/hrwros_ws/devel/.private/hrwros_msgs/share/hrwros_msgs/msg/CounterWithDelayActionResult.msg" "actionlib_msgs/GoalID:hrwros_msgs/CounterWithDelayResult:actionlib_msgs/GoalStatus:std_msgs/Header"
)

get_filename_component(_filename "/home/lxu9/hrwros_ws/src/hrwros/hrwros_msgs/msg/RobotTrajectories.msg" NAME_WE)
add_custom_target(_hrwros_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hrwros_msgs" "/home/lxu9/hrwros_ws/src/hrwros/hrwros_msgs/msg/RobotTrajectories.msg" "trajectory_msgs/JointTrajectory:trajectory_msgs/MultiDOFJointTrajectoryPoint:moveit_msgs/RobotTrajectory:geometry_msgs/Twist:trajectory_msgs/JointTrajectoryPoint:geometry_msgs/Transform:std_msgs/Header:geometry_msgs/Vector3:trajectory_msgs/MultiDOFJointTrajectory:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/lxu9/hrwros_ws/devel/.private/hrwros_msgs/share/hrwros_msgs/msg/CounterWithDelayResult.msg" NAME_WE)
add_custom_target(_hrwros_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hrwros_msgs" "/home/lxu9/hrwros_ws/devel/.private/hrwros_msgs/share/hrwros_msgs/msg/CounterWithDelayResult.msg" ""
)

get_filename_component(_filename "/home/lxu9/hrwros_ws/devel/.private/hrwros_msgs/share/hrwros_msgs/msg/CounterWithDelayActionFeedback.msg" NAME_WE)
add_custom_target(_hrwros_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hrwros_msgs" "/home/lxu9/hrwros_ws/devel/.private/hrwros_msgs/share/hrwros_msgs/msg/CounterWithDelayActionFeedback.msg" "actionlib_msgs/GoalID:actionlib_msgs/GoalStatus:hrwros_msgs/CounterWithDelayFeedback:std_msgs/Header"
)

get_filename_component(_filename "/home/lxu9/hrwros_ws/devel/.private/hrwros_msgs/share/hrwros_msgs/msg/CounterWithDelayGoal.msg" NAME_WE)
add_custom_target(_hrwros_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hrwros_msgs" "/home/lxu9/hrwros_ws/devel/.private/hrwros_msgs/share/hrwros_msgs/msg/CounterWithDelayGoal.msg" ""
)

get_filename_component(_filename "/home/lxu9/hrwros_ws/devel/.private/hrwros_msgs/share/hrwros_msgs/msg/CounterWithDelayFeedback.msg" NAME_WE)
add_custom_target(_hrwros_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hrwros_msgs" "/home/lxu9/hrwros_ws/devel/.private/hrwros_msgs/share/hrwros_msgs/msg/CounterWithDelayFeedback.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(hrwros_msgs
  "/home/lxu9/hrwros_ws/devel/.private/hrwros_msgs/share/hrwros_msgs/msg/CounterWithDelayActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/lxu9/hrwros_ws/src/hrwros/hrwros_msgs/msg/CounterWithDelayGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hrwros_msgs
)
_generate_msg_cpp(hrwros_msgs
  "/home/lxu9/hrwros_ws/src/hrwros/hrwros_msgs/msg/ObjectDetection.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hrwros_msgs
)
_generate_msg_cpp(hrwros_msgs
  "/home/lxu9/hrwros_ws/src/hrwros/hrwros_msgs/msg/TargetToolPoses.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hrwros_msgs
)
_generate_msg_cpp(hrwros_msgs
  "/home/lxu9/hrwros_ws/devel/.private/hrwros_msgs/share/hrwros_msgs/msg/CounterWithDelayAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/lxu9/hrwros_ws/src/hrwros/hrwros_msgs/msg/CounterWithDelayGoal.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/lxu9/hrwros_ws/src/hrwros/hrwros_msgs/msg/CounterWithDelayActionResult.msg;/home/lxu9/hrwros_ws/src/hrwros/hrwros_msgs/msg/CounterWithDelayActionGoal.msg;/home/lxu9/hrwros_ws/src/hrwros/hrwros_msgs/msg/CounterWithDelayFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/lxu9/hrwros_ws/src/hrwros/hrwros_msgs/msg/CounterWithDelayResult.msg;/home/lxu9/hrwros_ws/src/hrwros/hrwros_msgs/msg/CounterWithDelayActionFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hrwros_msgs
)
_generate_msg_cpp(hrwros_msgs
  "/home/lxu9/hrwros_ws/src/hrwros/hrwros_msgs/msg/SensorInformation.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Range.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hrwros_msgs
)
_generate_msg_cpp(hrwros_msgs
  "/home/lxu9/hrwros_ws/devel/.private/hrwros_msgs/share/hrwros_msgs/msg/CounterWithDelayActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/lxu9/hrwros_ws/src/hrwros/hrwros_msgs/msg/CounterWithDelayResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hrwros_msgs
)
_generate_msg_cpp(hrwros_msgs
  "/home/lxu9/hrwros_ws/src/hrwros/hrwros_msgs/msg/RobotTrajectories.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectoryPoint.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/RobotTrajectory.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectory.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hrwros_msgs
)
_generate_msg_cpp(hrwros_msgs
  "/home/lxu9/hrwros_ws/devel/.private/hrwros_msgs/share/hrwros_msgs/msg/CounterWithDelayResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hrwros_msgs
)
_generate_msg_cpp(hrwros_msgs
  "/home/lxu9/hrwros_ws/devel/.private/hrwros_msgs/share/hrwros_msgs/msg/CounterWithDelayActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/lxu9/hrwros_ws/src/hrwros/hrwros_msgs/msg/CounterWithDelayFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hrwros_msgs
)
_generate_msg_cpp(hrwros_msgs
  "/home/lxu9/hrwros_ws/devel/.private/hrwros_msgs/share/hrwros_msgs/msg/CounterWithDelayFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hrwros_msgs
)
_generate_msg_cpp(hrwros_msgs
  "/home/lxu9/hrwros_ws/devel/.private/hrwros_msgs/share/hrwros_msgs/msg/CounterWithDelayGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hrwros_msgs
)

### Generating Services
_generate_srv_cpp(hrwros_msgs
  "/home/lxu9/hrwros_ws/src/hrwros/hrwros_msgs/srv/ConvertMetresToFeet.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hrwros_msgs
)

### Generating Module File
_generate_module_cpp(hrwros_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hrwros_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(hrwros_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(hrwros_msgs_generate_messages hrwros_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lxu9/hrwros_ws/devel/.private/hrwros_msgs/share/hrwros_msgs/msg/CounterWithDelayActionGoal.msg" NAME_WE)
add_dependencies(hrwros_msgs_generate_messages_cpp _hrwros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lxu9/hrwros_ws/src/hrwros/hrwros_msgs/msg/ObjectDetection.msg" NAME_WE)
add_dependencies(hrwros_msgs_generate_messages_cpp _hrwros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lxu9/hrwros_ws/src/hrwros/hrwros_msgs/msg/TargetToolPoses.msg" NAME_WE)
add_dependencies(hrwros_msgs_generate_messages_cpp _hrwros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lxu9/hrwros_ws/src/hrwros/hrwros_msgs/srv/ConvertMetresToFeet.srv" NAME_WE)
add_dependencies(hrwros_msgs_generate_messages_cpp _hrwros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lxu9/hrwros_ws/devel/.private/hrwros_msgs/share/hrwros_msgs/msg/CounterWithDelayAction.msg" NAME_WE)
add_dependencies(hrwros_msgs_generate_messages_cpp _hrwros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lxu9/hrwros_ws/src/hrwros/hrwros_msgs/msg/SensorInformation.msg" NAME_WE)
add_dependencies(hrwros_msgs_generate_messages_cpp _hrwros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lxu9/hrwros_ws/devel/.private/hrwros_msgs/share/hrwros_msgs/msg/CounterWithDelayActionResult.msg" NAME_WE)
add_dependencies(hrwros_msgs_generate_messages_cpp _hrwros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lxu9/hrwros_ws/src/hrwros/hrwros_msgs/msg/RobotTrajectories.msg" NAME_WE)
add_dependencies(hrwros_msgs_generate_messages_cpp _hrwros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lxu9/hrwros_ws/devel/.private/hrwros_msgs/share/hrwros_msgs/msg/CounterWithDelayResult.msg" NAME_WE)
add_dependencies(hrwros_msgs_generate_messages_cpp _hrwros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lxu9/hrwros_ws/devel/.private/hrwros_msgs/share/hrwros_msgs/msg/CounterWithDelayActionFeedback.msg" NAME_WE)
add_dependencies(hrwros_msgs_generate_messages_cpp _hrwros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lxu9/hrwros_ws/devel/.private/hrwros_msgs/share/hrwros_msgs/msg/CounterWithDelayGoal.msg" NAME_WE)
add_dependencies(hrwros_msgs_generate_messages_cpp _hrwros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lxu9/hrwros_ws/devel/.private/hrwros_msgs/share/hrwros_msgs/msg/CounterWithDelayFeedback.msg" NAME_WE)
add_dependencies(hrwros_msgs_generate_messages_cpp _hrwros_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hrwros_msgs_gencpp)
add_dependencies(hrwros_msgs_gencpp hrwros_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hrwros_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(hrwros_msgs
  "/home/lxu9/hrwros_ws/devel/.private/hrwros_msgs/share/hrwros_msgs/msg/CounterWithDelayActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/lxu9/hrwros_ws/src/hrwros/hrwros_msgs/msg/CounterWithDelayGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hrwros_msgs
)
_generate_msg_eus(hrwros_msgs
  "/home/lxu9/hrwros_ws/src/hrwros/hrwros_msgs/msg/ObjectDetection.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hrwros_msgs
)
_generate_msg_eus(hrwros_msgs
  "/home/lxu9/hrwros_ws/src/hrwros/hrwros_msgs/msg/TargetToolPoses.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hrwros_msgs
)
_generate_msg_eus(hrwros_msgs
  "/home/lxu9/hrwros_ws/devel/.private/hrwros_msgs/share/hrwros_msgs/msg/CounterWithDelayAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/lxu9/hrwros_ws/src/hrwros/hrwros_msgs/msg/CounterWithDelayGoal.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/lxu9/hrwros_ws/src/hrwros/hrwros_msgs/msg/CounterWithDelayActionResult.msg;/home/lxu9/hrwros_ws/src/hrwros/hrwros_msgs/msg/CounterWithDelayActionGoal.msg;/home/lxu9/hrwros_ws/src/hrwros/hrwros_msgs/msg/CounterWithDelayFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/lxu9/hrwros_ws/src/hrwros/hrwros_msgs/msg/CounterWithDelayResult.msg;/home/lxu9/hrwros_ws/src/hrwros/hrwros_msgs/msg/CounterWithDelayActionFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hrwros_msgs
)
_generate_msg_eus(hrwros_msgs
  "/home/lxu9/hrwros_ws/src/hrwros/hrwros_msgs/msg/SensorInformation.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Range.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hrwros_msgs
)
_generate_msg_eus(hrwros_msgs
  "/home/lxu9/hrwros_ws/devel/.private/hrwros_msgs/share/hrwros_msgs/msg/CounterWithDelayActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/lxu9/hrwros_ws/src/hrwros/hrwros_msgs/msg/CounterWithDelayResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hrwros_msgs
)
_generate_msg_eus(hrwros_msgs
  "/home/lxu9/hrwros_ws/src/hrwros/hrwros_msgs/msg/RobotTrajectories.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectoryPoint.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/RobotTrajectory.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectory.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hrwros_msgs
)
_generate_msg_eus(hrwros_msgs
  "/home/lxu9/hrwros_ws/devel/.private/hrwros_msgs/share/hrwros_msgs/msg/CounterWithDelayResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hrwros_msgs
)
_generate_msg_eus(hrwros_msgs
  "/home/lxu9/hrwros_ws/devel/.private/hrwros_msgs/share/hrwros_msgs/msg/CounterWithDelayActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/lxu9/hrwros_ws/src/hrwros/hrwros_msgs/msg/CounterWithDelayFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hrwros_msgs
)
_generate_msg_eus(hrwros_msgs
  "/home/lxu9/hrwros_ws/devel/.private/hrwros_msgs/share/hrwros_msgs/msg/CounterWithDelayFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hrwros_msgs
)
_generate_msg_eus(hrwros_msgs
  "/home/lxu9/hrwros_ws/devel/.private/hrwros_msgs/share/hrwros_msgs/msg/CounterWithDelayGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hrwros_msgs
)

### Generating Services
_generate_srv_eus(hrwros_msgs
  "/home/lxu9/hrwros_ws/src/hrwros/hrwros_msgs/srv/ConvertMetresToFeet.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hrwros_msgs
)

### Generating Module File
_generate_module_eus(hrwros_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hrwros_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(hrwros_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(hrwros_msgs_generate_messages hrwros_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lxu9/hrwros_ws/devel/.private/hrwros_msgs/share/hrwros_msgs/msg/CounterWithDelayActionGoal.msg" NAME_WE)
add_dependencies(hrwros_msgs_generate_messages_eus _hrwros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lxu9/hrwros_ws/src/hrwros/hrwros_msgs/msg/ObjectDetection.msg" NAME_WE)
add_dependencies(hrwros_msgs_generate_messages_eus _hrwros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lxu9/hrwros_ws/src/hrwros/hrwros_msgs/msg/TargetToolPoses.msg" NAME_WE)
add_dependencies(hrwros_msgs_generate_messages_eus _hrwros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lxu9/hrwros_ws/src/hrwros/hrwros_msgs/srv/ConvertMetresToFeet.srv" NAME_WE)
add_dependencies(hrwros_msgs_generate_messages_eus _hrwros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lxu9/hrwros_ws/devel/.private/hrwros_msgs/share/hrwros_msgs/msg/CounterWithDelayAction.msg" NAME_WE)
add_dependencies(hrwros_msgs_generate_messages_eus _hrwros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lxu9/hrwros_ws/src/hrwros/hrwros_msgs/msg/SensorInformation.msg" NAME_WE)
add_dependencies(hrwros_msgs_generate_messages_eus _hrwros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lxu9/hrwros_ws/devel/.private/hrwros_msgs/share/hrwros_msgs/msg/CounterWithDelayActionResult.msg" NAME_WE)
add_dependencies(hrwros_msgs_generate_messages_eus _hrwros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lxu9/hrwros_ws/src/hrwros/hrwros_msgs/msg/RobotTrajectories.msg" NAME_WE)
add_dependencies(hrwros_msgs_generate_messages_eus _hrwros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lxu9/hrwros_ws/devel/.private/hrwros_msgs/share/hrwros_msgs/msg/CounterWithDelayResult.msg" NAME_WE)
add_dependencies(hrwros_msgs_generate_messages_eus _hrwros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lxu9/hrwros_ws/devel/.private/hrwros_msgs/share/hrwros_msgs/msg/CounterWithDelayActionFeedback.msg" NAME_WE)
add_dependencies(hrwros_msgs_generate_messages_eus _hrwros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lxu9/hrwros_ws/devel/.private/hrwros_msgs/share/hrwros_msgs/msg/CounterWithDelayGoal.msg" NAME_WE)
add_dependencies(hrwros_msgs_generate_messages_eus _hrwros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lxu9/hrwros_ws/devel/.private/hrwros_msgs/share/hrwros_msgs/msg/CounterWithDelayFeedback.msg" NAME_WE)
add_dependencies(hrwros_msgs_generate_messages_eus _hrwros_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hrwros_msgs_geneus)
add_dependencies(hrwros_msgs_geneus hrwros_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hrwros_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(hrwros_msgs
  "/home/lxu9/hrwros_ws/devel/.private/hrwros_msgs/share/hrwros_msgs/msg/CounterWithDelayActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/lxu9/hrwros_ws/src/hrwros/hrwros_msgs/msg/CounterWithDelayGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hrwros_msgs
)
_generate_msg_lisp(hrwros_msgs
  "/home/lxu9/hrwros_ws/src/hrwros/hrwros_msgs/msg/ObjectDetection.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hrwros_msgs
)
_generate_msg_lisp(hrwros_msgs
  "/home/lxu9/hrwros_ws/src/hrwros/hrwros_msgs/msg/TargetToolPoses.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hrwros_msgs
)
_generate_msg_lisp(hrwros_msgs
  "/home/lxu9/hrwros_ws/devel/.private/hrwros_msgs/share/hrwros_msgs/msg/CounterWithDelayAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/lxu9/hrwros_ws/src/hrwros/hrwros_msgs/msg/CounterWithDelayGoal.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/lxu9/hrwros_ws/src/hrwros/hrwros_msgs/msg/CounterWithDelayActionResult.msg;/home/lxu9/hrwros_ws/src/hrwros/hrwros_msgs/msg/CounterWithDelayActionGoal.msg;/home/lxu9/hrwros_ws/src/hrwros/hrwros_msgs/msg/CounterWithDelayFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/lxu9/hrwros_ws/src/hrwros/hrwros_msgs/msg/CounterWithDelayResult.msg;/home/lxu9/hrwros_ws/src/hrwros/hrwros_msgs/msg/CounterWithDelayActionFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hrwros_msgs
)
_generate_msg_lisp(hrwros_msgs
  "/home/lxu9/hrwros_ws/src/hrwros/hrwros_msgs/msg/SensorInformation.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Range.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hrwros_msgs
)
_generate_msg_lisp(hrwros_msgs
  "/home/lxu9/hrwros_ws/devel/.private/hrwros_msgs/share/hrwros_msgs/msg/CounterWithDelayActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/lxu9/hrwros_ws/src/hrwros/hrwros_msgs/msg/CounterWithDelayResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hrwros_msgs
)
_generate_msg_lisp(hrwros_msgs
  "/home/lxu9/hrwros_ws/src/hrwros/hrwros_msgs/msg/RobotTrajectories.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectoryPoint.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/RobotTrajectory.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectory.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hrwros_msgs
)
_generate_msg_lisp(hrwros_msgs
  "/home/lxu9/hrwros_ws/devel/.private/hrwros_msgs/share/hrwros_msgs/msg/CounterWithDelayResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hrwros_msgs
)
_generate_msg_lisp(hrwros_msgs
  "/home/lxu9/hrwros_ws/devel/.private/hrwros_msgs/share/hrwros_msgs/msg/CounterWithDelayActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/lxu9/hrwros_ws/src/hrwros/hrwros_msgs/msg/CounterWithDelayFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hrwros_msgs
)
_generate_msg_lisp(hrwros_msgs
  "/home/lxu9/hrwros_ws/devel/.private/hrwros_msgs/share/hrwros_msgs/msg/CounterWithDelayFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hrwros_msgs
)
_generate_msg_lisp(hrwros_msgs
  "/home/lxu9/hrwros_ws/devel/.private/hrwros_msgs/share/hrwros_msgs/msg/CounterWithDelayGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hrwros_msgs
)

### Generating Services
_generate_srv_lisp(hrwros_msgs
  "/home/lxu9/hrwros_ws/src/hrwros/hrwros_msgs/srv/ConvertMetresToFeet.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hrwros_msgs
)

### Generating Module File
_generate_module_lisp(hrwros_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hrwros_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(hrwros_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(hrwros_msgs_generate_messages hrwros_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lxu9/hrwros_ws/devel/.private/hrwros_msgs/share/hrwros_msgs/msg/CounterWithDelayActionGoal.msg" NAME_WE)
add_dependencies(hrwros_msgs_generate_messages_lisp _hrwros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lxu9/hrwros_ws/src/hrwros/hrwros_msgs/msg/ObjectDetection.msg" NAME_WE)
add_dependencies(hrwros_msgs_generate_messages_lisp _hrwros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lxu9/hrwros_ws/src/hrwros/hrwros_msgs/msg/TargetToolPoses.msg" NAME_WE)
add_dependencies(hrwros_msgs_generate_messages_lisp _hrwros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lxu9/hrwros_ws/src/hrwros/hrwros_msgs/srv/ConvertMetresToFeet.srv" NAME_WE)
add_dependencies(hrwros_msgs_generate_messages_lisp _hrwros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lxu9/hrwros_ws/devel/.private/hrwros_msgs/share/hrwros_msgs/msg/CounterWithDelayAction.msg" NAME_WE)
add_dependencies(hrwros_msgs_generate_messages_lisp _hrwros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lxu9/hrwros_ws/src/hrwros/hrwros_msgs/msg/SensorInformation.msg" NAME_WE)
add_dependencies(hrwros_msgs_generate_messages_lisp _hrwros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lxu9/hrwros_ws/devel/.private/hrwros_msgs/share/hrwros_msgs/msg/CounterWithDelayActionResult.msg" NAME_WE)
add_dependencies(hrwros_msgs_generate_messages_lisp _hrwros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lxu9/hrwros_ws/src/hrwros/hrwros_msgs/msg/RobotTrajectories.msg" NAME_WE)
add_dependencies(hrwros_msgs_generate_messages_lisp _hrwros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lxu9/hrwros_ws/devel/.private/hrwros_msgs/share/hrwros_msgs/msg/CounterWithDelayResult.msg" NAME_WE)
add_dependencies(hrwros_msgs_generate_messages_lisp _hrwros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lxu9/hrwros_ws/devel/.private/hrwros_msgs/share/hrwros_msgs/msg/CounterWithDelayActionFeedback.msg" NAME_WE)
add_dependencies(hrwros_msgs_generate_messages_lisp _hrwros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lxu9/hrwros_ws/devel/.private/hrwros_msgs/share/hrwros_msgs/msg/CounterWithDelayGoal.msg" NAME_WE)
add_dependencies(hrwros_msgs_generate_messages_lisp _hrwros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lxu9/hrwros_ws/devel/.private/hrwros_msgs/share/hrwros_msgs/msg/CounterWithDelayFeedback.msg" NAME_WE)
add_dependencies(hrwros_msgs_generate_messages_lisp _hrwros_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hrwros_msgs_genlisp)
add_dependencies(hrwros_msgs_genlisp hrwros_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hrwros_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(hrwros_msgs
  "/home/lxu9/hrwros_ws/devel/.private/hrwros_msgs/share/hrwros_msgs/msg/CounterWithDelayActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/lxu9/hrwros_ws/src/hrwros/hrwros_msgs/msg/CounterWithDelayGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hrwros_msgs
)
_generate_msg_nodejs(hrwros_msgs
  "/home/lxu9/hrwros_ws/src/hrwros/hrwros_msgs/msg/ObjectDetection.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hrwros_msgs
)
_generate_msg_nodejs(hrwros_msgs
  "/home/lxu9/hrwros_ws/src/hrwros/hrwros_msgs/msg/TargetToolPoses.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hrwros_msgs
)
_generate_msg_nodejs(hrwros_msgs
  "/home/lxu9/hrwros_ws/devel/.private/hrwros_msgs/share/hrwros_msgs/msg/CounterWithDelayAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/lxu9/hrwros_ws/src/hrwros/hrwros_msgs/msg/CounterWithDelayGoal.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/lxu9/hrwros_ws/src/hrwros/hrwros_msgs/msg/CounterWithDelayActionResult.msg;/home/lxu9/hrwros_ws/src/hrwros/hrwros_msgs/msg/CounterWithDelayActionGoal.msg;/home/lxu9/hrwros_ws/src/hrwros/hrwros_msgs/msg/CounterWithDelayFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/lxu9/hrwros_ws/src/hrwros/hrwros_msgs/msg/CounterWithDelayResult.msg;/home/lxu9/hrwros_ws/src/hrwros/hrwros_msgs/msg/CounterWithDelayActionFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hrwros_msgs
)
_generate_msg_nodejs(hrwros_msgs
  "/home/lxu9/hrwros_ws/src/hrwros/hrwros_msgs/msg/SensorInformation.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Range.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hrwros_msgs
)
_generate_msg_nodejs(hrwros_msgs
  "/home/lxu9/hrwros_ws/devel/.private/hrwros_msgs/share/hrwros_msgs/msg/CounterWithDelayActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/lxu9/hrwros_ws/src/hrwros/hrwros_msgs/msg/CounterWithDelayResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hrwros_msgs
)
_generate_msg_nodejs(hrwros_msgs
  "/home/lxu9/hrwros_ws/src/hrwros/hrwros_msgs/msg/RobotTrajectories.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectoryPoint.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/RobotTrajectory.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectory.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hrwros_msgs
)
_generate_msg_nodejs(hrwros_msgs
  "/home/lxu9/hrwros_ws/devel/.private/hrwros_msgs/share/hrwros_msgs/msg/CounterWithDelayResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hrwros_msgs
)
_generate_msg_nodejs(hrwros_msgs
  "/home/lxu9/hrwros_ws/devel/.private/hrwros_msgs/share/hrwros_msgs/msg/CounterWithDelayActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/lxu9/hrwros_ws/src/hrwros/hrwros_msgs/msg/CounterWithDelayFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hrwros_msgs
)
_generate_msg_nodejs(hrwros_msgs
  "/home/lxu9/hrwros_ws/devel/.private/hrwros_msgs/share/hrwros_msgs/msg/CounterWithDelayFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hrwros_msgs
)
_generate_msg_nodejs(hrwros_msgs
  "/home/lxu9/hrwros_ws/devel/.private/hrwros_msgs/share/hrwros_msgs/msg/CounterWithDelayGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hrwros_msgs
)

### Generating Services
_generate_srv_nodejs(hrwros_msgs
  "/home/lxu9/hrwros_ws/src/hrwros/hrwros_msgs/srv/ConvertMetresToFeet.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hrwros_msgs
)

### Generating Module File
_generate_module_nodejs(hrwros_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hrwros_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(hrwros_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(hrwros_msgs_generate_messages hrwros_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lxu9/hrwros_ws/devel/.private/hrwros_msgs/share/hrwros_msgs/msg/CounterWithDelayActionGoal.msg" NAME_WE)
add_dependencies(hrwros_msgs_generate_messages_nodejs _hrwros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lxu9/hrwros_ws/src/hrwros/hrwros_msgs/msg/ObjectDetection.msg" NAME_WE)
add_dependencies(hrwros_msgs_generate_messages_nodejs _hrwros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lxu9/hrwros_ws/src/hrwros/hrwros_msgs/msg/TargetToolPoses.msg" NAME_WE)
add_dependencies(hrwros_msgs_generate_messages_nodejs _hrwros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lxu9/hrwros_ws/src/hrwros/hrwros_msgs/srv/ConvertMetresToFeet.srv" NAME_WE)
add_dependencies(hrwros_msgs_generate_messages_nodejs _hrwros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lxu9/hrwros_ws/devel/.private/hrwros_msgs/share/hrwros_msgs/msg/CounterWithDelayAction.msg" NAME_WE)
add_dependencies(hrwros_msgs_generate_messages_nodejs _hrwros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lxu9/hrwros_ws/src/hrwros/hrwros_msgs/msg/SensorInformation.msg" NAME_WE)
add_dependencies(hrwros_msgs_generate_messages_nodejs _hrwros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lxu9/hrwros_ws/devel/.private/hrwros_msgs/share/hrwros_msgs/msg/CounterWithDelayActionResult.msg" NAME_WE)
add_dependencies(hrwros_msgs_generate_messages_nodejs _hrwros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lxu9/hrwros_ws/src/hrwros/hrwros_msgs/msg/RobotTrajectories.msg" NAME_WE)
add_dependencies(hrwros_msgs_generate_messages_nodejs _hrwros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lxu9/hrwros_ws/devel/.private/hrwros_msgs/share/hrwros_msgs/msg/CounterWithDelayResult.msg" NAME_WE)
add_dependencies(hrwros_msgs_generate_messages_nodejs _hrwros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lxu9/hrwros_ws/devel/.private/hrwros_msgs/share/hrwros_msgs/msg/CounterWithDelayActionFeedback.msg" NAME_WE)
add_dependencies(hrwros_msgs_generate_messages_nodejs _hrwros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lxu9/hrwros_ws/devel/.private/hrwros_msgs/share/hrwros_msgs/msg/CounterWithDelayGoal.msg" NAME_WE)
add_dependencies(hrwros_msgs_generate_messages_nodejs _hrwros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lxu9/hrwros_ws/devel/.private/hrwros_msgs/share/hrwros_msgs/msg/CounterWithDelayFeedback.msg" NAME_WE)
add_dependencies(hrwros_msgs_generate_messages_nodejs _hrwros_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hrwros_msgs_gennodejs)
add_dependencies(hrwros_msgs_gennodejs hrwros_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hrwros_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(hrwros_msgs
  "/home/lxu9/hrwros_ws/devel/.private/hrwros_msgs/share/hrwros_msgs/msg/CounterWithDelayActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/lxu9/hrwros_ws/src/hrwros/hrwros_msgs/msg/CounterWithDelayGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hrwros_msgs
)
_generate_msg_py(hrwros_msgs
  "/home/lxu9/hrwros_ws/src/hrwros/hrwros_msgs/msg/ObjectDetection.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hrwros_msgs
)
_generate_msg_py(hrwros_msgs
  "/home/lxu9/hrwros_ws/src/hrwros/hrwros_msgs/msg/TargetToolPoses.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hrwros_msgs
)
_generate_msg_py(hrwros_msgs
  "/home/lxu9/hrwros_ws/devel/.private/hrwros_msgs/share/hrwros_msgs/msg/CounterWithDelayAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/lxu9/hrwros_ws/src/hrwros/hrwros_msgs/msg/CounterWithDelayGoal.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/lxu9/hrwros_ws/src/hrwros/hrwros_msgs/msg/CounterWithDelayActionResult.msg;/home/lxu9/hrwros_ws/src/hrwros/hrwros_msgs/msg/CounterWithDelayActionGoal.msg;/home/lxu9/hrwros_ws/src/hrwros/hrwros_msgs/msg/CounterWithDelayFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/lxu9/hrwros_ws/src/hrwros/hrwros_msgs/msg/CounterWithDelayResult.msg;/home/lxu9/hrwros_ws/src/hrwros/hrwros_msgs/msg/CounterWithDelayActionFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hrwros_msgs
)
_generate_msg_py(hrwros_msgs
  "/home/lxu9/hrwros_ws/src/hrwros/hrwros_msgs/msg/SensorInformation.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Range.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hrwros_msgs
)
_generate_msg_py(hrwros_msgs
  "/home/lxu9/hrwros_ws/devel/.private/hrwros_msgs/share/hrwros_msgs/msg/CounterWithDelayActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/lxu9/hrwros_ws/src/hrwros/hrwros_msgs/msg/CounterWithDelayResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hrwros_msgs
)
_generate_msg_py(hrwros_msgs
  "/home/lxu9/hrwros_ws/src/hrwros/hrwros_msgs/msg/RobotTrajectories.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectoryPoint.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/RobotTrajectory.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectory.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hrwros_msgs
)
_generate_msg_py(hrwros_msgs
  "/home/lxu9/hrwros_ws/devel/.private/hrwros_msgs/share/hrwros_msgs/msg/CounterWithDelayResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hrwros_msgs
)
_generate_msg_py(hrwros_msgs
  "/home/lxu9/hrwros_ws/devel/.private/hrwros_msgs/share/hrwros_msgs/msg/CounterWithDelayActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/lxu9/hrwros_ws/src/hrwros/hrwros_msgs/msg/CounterWithDelayFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hrwros_msgs
)
_generate_msg_py(hrwros_msgs
  "/home/lxu9/hrwros_ws/devel/.private/hrwros_msgs/share/hrwros_msgs/msg/CounterWithDelayFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hrwros_msgs
)
_generate_msg_py(hrwros_msgs
  "/home/lxu9/hrwros_ws/devel/.private/hrwros_msgs/share/hrwros_msgs/msg/CounterWithDelayGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hrwros_msgs
)

### Generating Services
_generate_srv_py(hrwros_msgs
  "/home/lxu9/hrwros_ws/src/hrwros/hrwros_msgs/srv/ConvertMetresToFeet.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hrwros_msgs
)

### Generating Module File
_generate_module_py(hrwros_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hrwros_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(hrwros_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(hrwros_msgs_generate_messages hrwros_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lxu9/hrwros_ws/devel/.private/hrwros_msgs/share/hrwros_msgs/msg/CounterWithDelayActionGoal.msg" NAME_WE)
add_dependencies(hrwros_msgs_generate_messages_py _hrwros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lxu9/hrwros_ws/src/hrwros/hrwros_msgs/msg/ObjectDetection.msg" NAME_WE)
add_dependencies(hrwros_msgs_generate_messages_py _hrwros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lxu9/hrwros_ws/src/hrwros/hrwros_msgs/msg/TargetToolPoses.msg" NAME_WE)
add_dependencies(hrwros_msgs_generate_messages_py _hrwros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lxu9/hrwros_ws/src/hrwros/hrwros_msgs/srv/ConvertMetresToFeet.srv" NAME_WE)
add_dependencies(hrwros_msgs_generate_messages_py _hrwros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lxu9/hrwros_ws/devel/.private/hrwros_msgs/share/hrwros_msgs/msg/CounterWithDelayAction.msg" NAME_WE)
add_dependencies(hrwros_msgs_generate_messages_py _hrwros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lxu9/hrwros_ws/src/hrwros/hrwros_msgs/msg/SensorInformation.msg" NAME_WE)
add_dependencies(hrwros_msgs_generate_messages_py _hrwros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lxu9/hrwros_ws/devel/.private/hrwros_msgs/share/hrwros_msgs/msg/CounterWithDelayActionResult.msg" NAME_WE)
add_dependencies(hrwros_msgs_generate_messages_py _hrwros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lxu9/hrwros_ws/src/hrwros/hrwros_msgs/msg/RobotTrajectories.msg" NAME_WE)
add_dependencies(hrwros_msgs_generate_messages_py _hrwros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lxu9/hrwros_ws/devel/.private/hrwros_msgs/share/hrwros_msgs/msg/CounterWithDelayResult.msg" NAME_WE)
add_dependencies(hrwros_msgs_generate_messages_py _hrwros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lxu9/hrwros_ws/devel/.private/hrwros_msgs/share/hrwros_msgs/msg/CounterWithDelayActionFeedback.msg" NAME_WE)
add_dependencies(hrwros_msgs_generate_messages_py _hrwros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lxu9/hrwros_ws/devel/.private/hrwros_msgs/share/hrwros_msgs/msg/CounterWithDelayGoal.msg" NAME_WE)
add_dependencies(hrwros_msgs_generate_messages_py _hrwros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lxu9/hrwros_ws/devel/.private/hrwros_msgs/share/hrwros_msgs/msg/CounterWithDelayFeedback.msg" NAME_WE)
add_dependencies(hrwros_msgs_generate_messages_py _hrwros_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hrwros_msgs_genpy)
add_dependencies(hrwros_msgs_genpy hrwros_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hrwros_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hrwros_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hrwros_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(hrwros_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(hrwros_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET trajectory_msgs_generate_messages_cpp)
  add_dependencies(hrwros_msgs_generate_messages_cpp trajectory_msgs_generate_messages_cpp)
endif()
if(TARGET moveit_msgs_generate_messages_cpp)
  add_dependencies(hrwros_msgs_generate_messages_cpp moveit_msgs_generate_messages_cpp)
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(hrwros_msgs_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hrwros_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hrwros_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(hrwros_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(hrwros_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET trajectory_msgs_generate_messages_eus)
  add_dependencies(hrwros_msgs_generate_messages_eus trajectory_msgs_generate_messages_eus)
endif()
if(TARGET moveit_msgs_generate_messages_eus)
  add_dependencies(hrwros_msgs_generate_messages_eus moveit_msgs_generate_messages_eus)
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(hrwros_msgs_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hrwros_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hrwros_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(hrwros_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(hrwros_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET trajectory_msgs_generate_messages_lisp)
  add_dependencies(hrwros_msgs_generate_messages_lisp trajectory_msgs_generate_messages_lisp)
endif()
if(TARGET moveit_msgs_generate_messages_lisp)
  add_dependencies(hrwros_msgs_generate_messages_lisp moveit_msgs_generate_messages_lisp)
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(hrwros_msgs_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hrwros_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hrwros_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(hrwros_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(hrwros_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET trajectory_msgs_generate_messages_nodejs)
  add_dependencies(hrwros_msgs_generate_messages_nodejs trajectory_msgs_generate_messages_nodejs)
endif()
if(TARGET moveit_msgs_generate_messages_nodejs)
  add_dependencies(hrwros_msgs_generate_messages_nodejs moveit_msgs_generate_messages_nodejs)
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(hrwros_msgs_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hrwros_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hrwros_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hrwros_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(hrwros_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(hrwros_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET trajectory_msgs_generate_messages_py)
  add_dependencies(hrwros_msgs_generate_messages_py trajectory_msgs_generate_messages_py)
endif()
if(TARGET moveit_msgs_generate_messages_py)
  add_dependencies(hrwros_msgs_generate_messages_py moveit_msgs_generate_messages_py)
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(hrwros_msgs_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
