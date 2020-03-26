# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "hrwros_gazebo: 5 messages, 2 services")

set(MSG_I_FLAGS "-Ihrwros_gazebo:/home/lxu9/hrwros_ws/src/hrwros_gazebo/msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(hrwros_gazebo_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/lxu9/hrwros_ws/src/hrwros_gazebo/srv/ConveyorBeltControl.srv" NAME_WE)
add_custom_target(_hrwros_gazebo_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hrwros_gazebo" "/home/lxu9/hrwros_ws/src/hrwros_gazebo/srv/ConveyorBeltControl.srv" "hrwros_gazebo/ConveyorBeltState"
)

get_filename_component(_filename "/home/lxu9/hrwros_ws/src/hrwros_gazebo/msg/VacuumGripperState.msg" NAME_WE)
add_custom_target(_hrwros_gazebo_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hrwros_gazebo" "/home/lxu9/hrwros_ws/src/hrwros_gazebo/msg/VacuumGripperState.msg" ""
)

get_filename_component(_filename "/home/lxu9/hrwros_ws/src/hrwros_gazebo/msg/Model.msg" NAME_WE)
add_custom_target(_hrwros_gazebo_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hrwros_gazebo" "/home/lxu9/hrwros_ws/src/hrwros_gazebo/msg/Model.msg" "geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Point"
)

get_filename_component(_filename "/home/lxu9/hrwros_ws/src/hrwros_gazebo/srv/VacuumGripperControl.srv" NAME_WE)
add_custom_target(_hrwros_gazebo_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hrwros_gazebo" "/home/lxu9/hrwros_ws/src/hrwros_gazebo/srv/VacuumGripperControl.srv" ""
)

get_filename_component(_filename "/home/lxu9/hrwros_ws/src/hrwros_gazebo/msg/ConveyorBeltState.msg" NAME_WE)
add_custom_target(_hrwros_gazebo_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hrwros_gazebo" "/home/lxu9/hrwros_ws/src/hrwros_gazebo/msg/ConveyorBeltState.msg" ""
)

get_filename_component(_filename "/home/lxu9/hrwros_ws/src/hrwros_gazebo/msg/LogicalCameraImage.msg" NAME_WE)
add_custom_target(_hrwros_gazebo_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hrwros_gazebo" "/home/lxu9/hrwros_ws/src/hrwros_gazebo/msg/LogicalCameraImage.msg" "hrwros_gazebo/Model:geometry_msgs/Point:geometry_msgs/Quaternion:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/lxu9/hrwros_ws/src/hrwros_gazebo/msg/Proximity.msg" NAME_WE)
add_custom_target(_hrwros_gazebo_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hrwros_gazebo" "/home/lxu9/hrwros_ws/src/hrwros_gazebo/msg/Proximity.msg" "std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(hrwros_gazebo
  "/home/lxu9/hrwros_ws/src/hrwros_gazebo/msg/ConveyorBeltState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hrwros_gazebo
)
_generate_msg_cpp(hrwros_gazebo
  "/home/lxu9/hrwros_ws/src/hrwros_gazebo/msg/VacuumGripperState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hrwros_gazebo
)
_generate_msg_cpp(hrwros_gazebo
  "/home/lxu9/hrwros_ws/src/hrwros_gazebo/msg/Proximity.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hrwros_gazebo
)
_generate_msg_cpp(hrwros_gazebo
  "/home/lxu9/hrwros_ws/src/hrwros_gazebo/msg/LogicalCameraImage.msg"
  "${MSG_I_FLAGS}"
  "/home/lxu9/hrwros_ws/src/hrwros_gazebo/msg/Model.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hrwros_gazebo
)
_generate_msg_cpp(hrwros_gazebo
  "/home/lxu9/hrwros_ws/src/hrwros_gazebo/msg/Model.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hrwros_gazebo
)

### Generating Services
_generate_srv_cpp(hrwros_gazebo
  "/home/lxu9/hrwros_ws/src/hrwros_gazebo/srv/ConveyorBeltControl.srv"
  "${MSG_I_FLAGS}"
  "/home/lxu9/hrwros_ws/src/hrwros_gazebo/msg/ConveyorBeltState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hrwros_gazebo
)
_generate_srv_cpp(hrwros_gazebo
  "/home/lxu9/hrwros_ws/src/hrwros_gazebo/srv/VacuumGripperControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hrwros_gazebo
)

### Generating Module File
_generate_module_cpp(hrwros_gazebo
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hrwros_gazebo
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(hrwros_gazebo_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(hrwros_gazebo_generate_messages hrwros_gazebo_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lxu9/hrwros_ws/src/hrwros_gazebo/srv/ConveyorBeltControl.srv" NAME_WE)
add_dependencies(hrwros_gazebo_generate_messages_cpp _hrwros_gazebo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lxu9/hrwros_ws/src/hrwros_gazebo/msg/VacuumGripperState.msg" NAME_WE)
add_dependencies(hrwros_gazebo_generate_messages_cpp _hrwros_gazebo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lxu9/hrwros_ws/src/hrwros_gazebo/msg/Model.msg" NAME_WE)
add_dependencies(hrwros_gazebo_generate_messages_cpp _hrwros_gazebo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lxu9/hrwros_ws/src/hrwros_gazebo/srv/VacuumGripperControl.srv" NAME_WE)
add_dependencies(hrwros_gazebo_generate_messages_cpp _hrwros_gazebo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lxu9/hrwros_ws/src/hrwros_gazebo/msg/ConveyorBeltState.msg" NAME_WE)
add_dependencies(hrwros_gazebo_generate_messages_cpp _hrwros_gazebo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lxu9/hrwros_ws/src/hrwros_gazebo/msg/LogicalCameraImage.msg" NAME_WE)
add_dependencies(hrwros_gazebo_generate_messages_cpp _hrwros_gazebo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lxu9/hrwros_ws/src/hrwros_gazebo/msg/Proximity.msg" NAME_WE)
add_dependencies(hrwros_gazebo_generate_messages_cpp _hrwros_gazebo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hrwros_gazebo_gencpp)
add_dependencies(hrwros_gazebo_gencpp hrwros_gazebo_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hrwros_gazebo_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(hrwros_gazebo
  "/home/lxu9/hrwros_ws/src/hrwros_gazebo/msg/ConveyorBeltState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hrwros_gazebo
)
_generate_msg_eus(hrwros_gazebo
  "/home/lxu9/hrwros_ws/src/hrwros_gazebo/msg/VacuumGripperState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hrwros_gazebo
)
_generate_msg_eus(hrwros_gazebo
  "/home/lxu9/hrwros_ws/src/hrwros_gazebo/msg/Proximity.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hrwros_gazebo
)
_generate_msg_eus(hrwros_gazebo
  "/home/lxu9/hrwros_ws/src/hrwros_gazebo/msg/LogicalCameraImage.msg"
  "${MSG_I_FLAGS}"
  "/home/lxu9/hrwros_ws/src/hrwros_gazebo/msg/Model.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hrwros_gazebo
)
_generate_msg_eus(hrwros_gazebo
  "/home/lxu9/hrwros_ws/src/hrwros_gazebo/msg/Model.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hrwros_gazebo
)

### Generating Services
_generate_srv_eus(hrwros_gazebo
  "/home/lxu9/hrwros_ws/src/hrwros_gazebo/srv/ConveyorBeltControl.srv"
  "${MSG_I_FLAGS}"
  "/home/lxu9/hrwros_ws/src/hrwros_gazebo/msg/ConveyorBeltState.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hrwros_gazebo
)
_generate_srv_eus(hrwros_gazebo
  "/home/lxu9/hrwros_ws/src/hrwros_gazebo/srv/VacuumGripperControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hrwros_gazebo
)

### Generating Module File
_generate_module_eus(hrwros_gazebo
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hrwros_gazebo
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(hrwros_gazebo_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(hrwros_gazebo_generate_messages hrwros_gazebo_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lxu9/hrwros_ws/src/hrwros_gazebo/srv/ConveyorBeltControl.srv" NAME_WE)
add_dependencies(hrwros_gazebo_generate_messages_eus _hrwros_gazebo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lxu9/hrwros_ws/src/hrwros_gazebo/msg/VacuumGripperState.msg" NAME_WE)
add_dependencies(hrwros_gazebo_generate_messages_eus _hrwros_gazebo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lxu9/hrwros_ws/src/hrwros_gazebo/msg/Model.msg" NAME_WE)
add_dependencies(hrwros_gazebo_generate_messages_eus _hrwros_gazebo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lxu9/hrwros_ws/src/hrwros_gazebo/srv/VacuumGripperControl.srv" NAME_WE)
add_dependencies(hrwros_gazebo_generate_messages_eus _hrwros_gazebo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lxu9/hrwros_ws/src/hrwros_gazebo/msg/ConveyorBeltState.msg" NAME_WE)
add_dependencies(hrwros_gazebo_generate_messages_eus _hrwros_gazebo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lxu9/hrwros_ws/src/hrwros_gazebo/msg/LogicalCameraImage.msg" NAME_WE)
add_dependencies(hrwros_gazebo_generate_messages_eus _hrwros_gazebo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lxu9/hrwros_ws/src/hrwros_gazebo/msg/Proximity.msg" NAME_WE)
add_dependencies(hrwros_gazebo_generate_messages_eus _hrwros_gazebo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hrwros_gazebo_geneus)
add_dependencies(hrwros_gazebo_geneus hrwros_gazebo_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hrwros_gazebo_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(hrwros_gazebo
  "/home/lxu9/hrwros_ws/src/hrwros_gazebo/msg/ConveyorBeltState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hrwros_gazebo
)
_generate_msg_lisp(hrwros_gazebo
  "/home/lxu9/hrwros_ws/src/hrwros_gazebo/msg/VacuumGripperState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hrwros_gazebo
)
_generate_msg_lisp(hrwros_gazebo
  "/home/lxu9/hrwros_ws/src/hrwros_gazebo/msg/Proximity.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hrwros_gazebo
)
_generate_msg_lisp(hrwros_gazebo
  "/home/lxu9/hrwros_ws/src/hrwros_gazebo/msg/LogicalCameraImage.msg"
  "${MSG_I_FLAGS}"
  "/home/lxu9/hrwros_ws/src/hrwros_gazebo/msg/Model.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hrwros_gazebo
)
_generate_msg_lisp(hrwros_gazebo
  "/home/lxu9/hrwros_ws/src/hrwros_gazebo/msg/Model.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hrwros_gazebo
)

### Generating Services
_generate_srv_lisp(hrwros_gazebo
  "/home/lxu9/hrwros_ws/src/hrwros_gazebo/srv/ConveyorBeltControl.srv"
  "${MSG_I_FLAGS}"
  "/home/lxu9/hrwros_ws/src/hrwros_gazebo/msg/ConveyorBeltState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hrwros_gazebo
)
_generate_srv_lisp(hrwros_gazebo
  "/home/lxu9/hrwros_ws/src/hrwros_gazebo/srv/VacuumGripperControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hrwros_gazebo
)

### Generating Module File
_generate_module_lisp(hrwros_gazebo
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hrwros_gazebo
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(hrwros_gazebo_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(hrwros_gazebo_generate_messages hrwros_gazebo_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lxu9/hrwros_ws/src/hrwros_gazebo/srv/ConveyorBeltControl.srv" NAME_WE)
add_dependencies(hrwros_gazebo_generate_messages_lisp _hrwros_gazebo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lxu9/hrwros_ws/src/hrwros_gazebo/msg/VacuumGripperState.msg" NAME_WE)
add_dependencies(hrwros_gazebo_generate_messages_lisp _hrwros_gazebo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lxu9/hrwros_ws/src/hrwros_gazebo/msg/Model.msg" NAME_WE)
add_dependencies(hrwros_gazebo_generate_messages_lisp _hrwros_gazebo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lxu9/hrwros_ws/src/hrwros_gazebo/srv/VacuumGripperControl.srv" NAME_WE)
add_dependencies(hrwros_gazebo_generate_messages_lisp _hrwros_gazebo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lxu9/hrwros_ws/src/hrwros_gazebo/msg/ConveyorBeltState.msg" NAME_WE)
add_dependencies(hrwros_gazebo_generate_messages_lisp _hrwros_gazebo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lxu9/hrwros_ws/src/hrwros_gazebo/msg/LogicalCameraImage.msg" NAME_WE)
add_dependencies(hrwros_gazebo_generate_messages_lisp _hrwros_gazebo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lxu9/hrwros_ws/src/hrwros_gazebo/msg/Proximity.msg" NAME_WE)
add_dependencies(hrwros_gazebo_generate_messages_lisp _hrwros_gazebo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hrwros_gazebo_genlisp)
add_dependencies(hrwros_gazebo_genlisp hrwros_gazebo_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hrwros_gazebo_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(hrwros_gazebo
  "/home/lxu9/hrwros_ws/src/hrwros_gazebo/msg/ConveyorBeltState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hrwros_gazebo
)
_generate_msg_nodejs(hrwros_gazebo
  "/home/lxu9/hrwros_ws/src/hrwros_gazebo/msg/VacuumGripperState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hrwros_gazebo
)
_generate_msg_nodejs(hrwros_gazebo
  "/home/lxu9/hrwros_ws/src/hrwros_gazebo/msg/Proximity.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hrwros_gazebo
)
_generate_msg_nodejs(hrwros_gazebo
  "/home/lxu9/hrwros_ws/src/hrwros_gazebo/msg/LogicalCameraImage.msg"
  "${MSG_I_FLAGS}"
  "/home/lxu9/hrwros_ws/src/hrwros_gazebo/msg/Model.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hrwros_gazebo
)
_generate_msg_nodejs(hrwros_gazebo
  "/home/lxu9/hrwros_ws/src/hrwros_gazebo/msg/Model.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hrwros_gazebo
)

### Generating Services
_generate_srv_nodejs(hrwros_gazebo
  "/home/lxu9/hrwros_ws/src/hrwros_gazebo/srv/ConveyorBeltControl.srv"
  "${MSG_I_FLAGS}"
  "/home/lxu9/hrwros_ws/src/hrwros_gazebo/msg/ConveyorBeltState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hrwros_gazebo
)
_generate_srv_nodejs(hrwros_gazebo
  "/home/lxu9/hrwros_ws/src/hrwros_gazebo/srv/VacuumGripperControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hrwros_gazebo
)

### Generating Module File
_generate_module_nodejs(hrwros_gazebo
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hrwros_gazebo
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(hrwros_gazebo_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(hrwros_gazebo_generate_messages hrwros_gazebo_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lxu9/hrwros_ws/src/hrwros_gazebo/srv/ConveyorBeltControl.srv" NAME_WE)
add_dependencies(hrwros_gazebo_generate_messages_nodejs _hrwros_gazebo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lxu9/hrwros_ws/src/hrwros_gazebo/msg/VacuumGripperState.msg" NAME_WE)
add_dependencies(hrwros_gazebo_generate_messages_nodejs _hrwros_gazebo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lxu9/hrwros_ws/src/hrwros_gazebo/msg/Model.msg" NAME_WE)
add_dependencies(hrwros_gazebo_generate_messages_nodejs _hrwros_gazebo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lxu9/hrwros_ws/src/hrwros_gazebo/srv/VacuumGripperControl.srv" NAME_WE)
add_dependencies(hrwros_gazebo_generate_messages_nodejs _hrwros_gazebo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lxu9/hrwros_ws/src/hrwros_gazebo/msg/ConveyorBeltState.msg" NAME_WE)
add_dependencies(hrwros_gazebo_generate_messages_nodejs _hrwros_gazebo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lxu9/hrwros_ws/src/hrwros_gazebo/msg/LogicalCameraImage.msg" NAME_WE)
add_dependencies(hrwros_gazebo_generate_messages_nodejs _hrwros_gazebo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lxu9/hrwros_ws/src/hrwros_gazebo/msg/Proximity.msg" NAME_WE)
add_dependencies(hrwros_gazebo_generate_messages_nodejs _hrwros_gazebo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hrwros_gazebo_gennodejs)
add_dependencies(hrwros_gazebo_gennodejs hrwros_gazebo_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hrwros_gazebo_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(hrwros_gazebo
  "/home/lxu9/hrwros_ws/src/hrwros_gazebo/msg/ConveyorBeltState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hrwros_gazebo
)
_generate_msg_py(hrwros_gazebo
  "/home/lxu9/hrwros_ws/src/hrwros_gazebo/msg/VacuumGripperState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hrwros_gazebo
)
_generate_msg_py(hrwros_gazebo
  "/home/lxu9/hrwros_ws/src/hrwros_gazebo/msg/Proximity.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hrwros_gazebo
)
_generate_msg_py(hrwros_gazebo
  "/home/lxu9/hrwros_ws/src/hrwros_gazebo/msg/LogicalCameraImage.msg"
  "${MSG_I_FLAGS}"
  "/home/lxu9/hrwros_ws/src/hrwros_gazebo/msg/Model.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hrwros_gazebo
)
_generate_msg_py(hrwros_gazebo
  "/home/lxu9/hrwros_ws/src/hrwros_gazebo/msg/Model.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hrwros_gazebo
)

### Generating Services
_generate_srv_py(hrwros_gazebo
  "/home/lxu9/hrwros_ws/src/hrwros_gazebo/srv/ConveyorBeltControl.srv"
  "${MSG_I_FLAGS}"
  "/home/lxu9/hrwros_ws/src/hrwros_gazebo/msg/ConveyorBeltState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hrwros_gazebo
)
_generate_srv_py(hrwros_gazebo
  "/home/lxu9/hrwros_ws/src/hrwros_gazebo/srv/VacuumGripperControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hrwros_gazebo
)

### Generating Module File
_generate_module_py(hrwros_gazebo
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hrwros_gazebo
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(hrwros_gazebo_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(hrwros_gazebo_generate_messages hrwros_gazebo_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lxu9/hrwros_ws/src/hrwros_gazebo/srv/ConveyorBeltControl.srv" NAME_WE)
add_dependencies(hrwros_gazebo_generate_messages_py _hrwros_gazebo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lxu9/hrwros_ws/src/hrwros_gazebo/msg/VacuumGripperState.msg" NAME_WE)
add_dependencies(hrwros_gazebo_generate_messages_py _hrwros_gazebo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lxu9/hrwros_ws/src/hrwros_gazebo/msg/Model.msg" NAME_WE)
add_dependencies(hrwros_gazebo_generate_messages_py _hrwros_gazebo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lxu9/hrwros_ws/src/hrwros_gazebo/srv/VacuumGripperControl.srv" NAME_WE)
add_dependencies(hrwros_gazebo_generate_messages_py _hrwros_gazebo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lxu9/hrwros_ws/src/hrwros_gazebo/msg/ConveyorBeltState.msg" NAME_WE)
add_dependencies(hrwros_gazebo_generate_messages_py _hrwros_gazebo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lxu9/hrwros_ws/src/hrwros_gazebo/msg/LogicalCameraImage.msg" NAME_WE)
add_dependencies(hrwros_gazebo_generate_messages_py _hrwros_gazebo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lxu9/hrwros_ws/src/hrwros_gazebo/msg/Proximity.msg" NAME_WE)
add_dependencies(hrwros_gazebo_generate_messages_py _hrwros_gazebo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hrwros_gazebo_genpy)
add_dependencies(hrwros_gazebo_genpy hrwros_gazebo_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hrwros_gazebo_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hrwros_gazebo)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hrwros_gazebo
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(hrwros_gazebo_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(hrwros_gazebo_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hrwros_gazebo)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hrwros_gazebo
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(hrwros_gazebo_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(hrwros_gazebo_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hrwros_gazebo)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hrwros_gazebo
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(hrwros_gazebo_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(hrwros_gazebo_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hrwros_gazebo)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hrwros_gazebo
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(hrwros_gazebo_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(hrwros_gazebo_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hrwros_gazebo)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hrwros_gazebo\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hrwros_gazebo
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(hrwros_gazebo_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(hrwros_gazebo_generate_messages_py std_msgs_generate_messages_py)
endif()
