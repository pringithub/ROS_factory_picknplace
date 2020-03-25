; Auto-generated. Do not edit!


(cl:in-package hrwros_msgs-msg)


;//! \htmlinclude RobotTrajectories.msg.html

(cl:defclass <RobotTrajectories> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (cur_to_approach
    :reader cur_to_approach
    :initarg :cur_to_approach
    :type moveit_msgs-msg:RobotTrajectory
    :initform (cl:make-instance 'moveit_msgs-msg:RobotTrajectory))
   (approach_to_pick
    :reader approach_to_pick
    :initarg :approach_to_pick
    :type moveit_msgs-msg:RobotTrajectory
    :initform (cl:make-instance 'moveit_msgs-msg:RobotTrajectory))
   (pick_to_retreat
    :reader pick_to_retreat
    :initarg :pick_to_retreat
    :type moveit_msgs-msg:RobotTrajectory
    :initform (cl:make-instance 'moveit_msgs-msg:RobotTrajectory))
   (retreat_to_place
    :reader retreat_to_place
    :initarg :retreat_to_place
    :type moveit_msgs-msg:RobotTrajectory
    :initform (cl:make-instance 'moveit_msgs-msg:RobotTrajectory))
   (trajectory_delays
    :reader trajectory_delays
    :initarg :trajectory_delays
    :type (cl:vector cl:real)
   :initform (cl:make-array 0 :element-type 'cl:real :initial-element 0))
   (execution_duration
    :reader execution_duration
    :initarg :execution_duration
    :type (cl:vector cl:real)
   :initform (cl:make-array 0 :element-type 'cl:real :initial-element 0))
   (pick_deadline
    :reader pick_deadline
    :initarg :pick_deadline
    :type cl:real
    :initform 0))
)

(cl:defclass RobotTrajectories (<RobotTrajectories>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotTrajectories>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotTrajectories)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hrwros_msgs-msg:<RobotTrajectories> is deprecated: use hrwros_msgs-msg:RobotTrajectories instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RobotTrajectories>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hrwros_msgs-msg:header-val is deprecated.  Use hrwros_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'cur_to_approach-val :lambda-list '(m))
(cl:defmethod cur_to_approach-val ((m <RobotTrajectories>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hrwros_msgs-msg:cur_to_approach-val is deprecated.  Use hrwros_msgs-msg:cur_to_approach instead.")
  (cur_to_approach m))

(cl:ensure-generic-function 'approach_to_pick-val :lambda-list '(m))
(cl:defmethod approach_to_pick-val ((m <RobotTrajectories>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hrwros_msgs-msg:approach_to_pick-val is deprecated.  Use hrwros_msgs-msg:approach_to_pick instead.")
  (approach_to_pick m))

(cl:ensure-generic-function 'pick_to_retreat-val :lambda-list '(m))
(cl:defmethod pick_to_retreat-val ((m <RobotTrajectories>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hrwros_msgs-msg:pick_to_retreat-val is deprecated.  Use hrwros_msgs-msg:pick_to_retreat instead.")
  (pick_to_retreat m))

(cl:ensure-generic-function 'retreat_to_place-val :lambda-list '(m))
(cl:defmethod retreat_to_place-val ((m <RobotTrajectories>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hrwros_msgs-msg:retreat_to_place-val is deprecated.  Use hrwros_msgs-msg:retreat_to_place instead.")
  (retreat_to_place m))

(cl:ensure-generic-function 'trajectory_delays-val :lambda-list '(m))
(cl:defmethod trajectory_delays-val ((m <RobotTrajectories>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hrwros_msgs-msg:trajectory_delays-val is deprecated.  Use hrwros_msgs-msg:trajectory_delays instead.")
  (trajectory_delays m))

(cl:ensure-generic-function 'execution_duration-val :lambda-list '(m))
(cl:defmethod execution_duration-val ((m <RobotTrajectories>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hrwros_msgs-msg:execution_duration-val is deprecated.  Use hrwros_msgs-msg:execution_duration instead.")
  (execution_duration m))

(cl:ensure-generic-function 'pick_deadline-val :lambda-list '(m))
(cl:defmethod pick_deadline-val ((m <RobotTrajectories>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hrwros_msgs-msg:pick_deadline-val is deprecated.  Use hrwros_msgs-msg:pick_deadline instead.")
  (pick_deadline m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotTrajectories>) ostream)
  "Serializes a message object of type '<RobotTrajectories>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cur_to_approach) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'approach_to_pick) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pick_to_retreat) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'retreat_to_place) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'trajectory_delays))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__sec (cl:floor ele))
        (__nsec (cl:round (cl:* 1e9 (cl:- ele (cl:floor ele))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream)))
   (cl:slot-value msg 'trajectory_delays))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'execution_duration))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__sec (cl:floor ele))
        (__nsec (cl:round (cl:* 1e9 (cl:- ele (cl:floor ele))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream)))
   (cl:slot-value msg 'execution_duration))
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'pick_deadline)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'pick_deadline) (cl:floor (cl:slot-value msg 'pick_deadline)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotTrajectories>) istream)
  "Deserializes a message object of type '<RobotTrajectories>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cur_to_approach) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'approach_to_pick) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pick_to_retreat) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'retreat_to_place) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'trajectory_delays) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'trajectory_delays)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'execution_duration) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'execution_duration)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9)))))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pick_deadline) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotTrajectories>)))
  "Returns string type for a message object of type '<RobotTrajectories>"
  "hrwros_msgs/RobotTrajectories")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotTrajectories)))
  "Returns string type for a message object of type 'RobotTrajectories"
  "hrwros_msgs/RobotTrajectories")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotTrajectories>)))
  "Returns md5sum for a message object of type '<RobotTrajectories>"
  "bb6c13c9e47247b8435a83c302eeca2c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotTrajectories)))
  "Returns md5sum for a message object of type 'RobotTrajectories"
  "bb6c13c9e47247b8435a83c302eeca2c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotTrajectories>)))
  "Returns full string definition for message of type '<RobotTrajectories>"
  (cl:format cl:nil "std_msgs/Header header~%moveit_msgs/RobotTrajectory cur_to_approach       # Array of trajectories to be executed by the robot from current pose to approach pose~%moveit_msgs/RobotTrajectory approach_to_pick  # Array of trajectories to be executed by the robot from approach pose to pick pose~%moveit_msgs/RobotTrajectory pick_to_retreat   # Array of trajectories to be executed by the robot from pick pose to retreat pose~%moveit_msgs/RobotTrajectory retreat_to_place  # Array of trajectories to be executed by the robot from retreat pose to place pose~%duration[] trajectory_delays                  # Time delays before each trajectory.  Use 0 for no delay~%duration[] execution_duration                 # Execution duration for each state of robot trajectories~%time pick_deadline                            # The deadline to reach pick pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: moveit_msgs/RobotTrajectory~%trajectory_msgs/JointTrajectory joint_trajectory~%trajectory_msgs/MultiDOFJointTrajectory multi_dof_joint_trajectory~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectory~%Header header~%string[] joint_names~%JointTrajectoryPoint[] points~%================================================================================~%MSG: trajectory_msgs/JointTrajectoryPoint~%# Each trajectory point specifies either positions[, velocities[, accelerations]]~%# or positions[, effort] for the trajectory to be executed.~%# All specified values are in the same order as the joint names in JointTrajectory.msg~%~%float64[] positions~%float64[] velocities~%float64[] accelerations~%float64[] effort~%duration time_from_start~%~%================================================================================~%MSG: trajectory_msgs/MultiDOFJointTrajectory~%# The header is used to specify the coordinate frame and the reference time for the trajectory durations~%Header header~%~%# A representation of a multi-dof joint trajectory (each point is a transformation)~%# Each point along the trajectory will include an array of positions/velocities/accelerations~%# that has the same length as the array of joint names, and has the same order of joints as ~%# the joint names array.~%~%string[] joint_names~%MultiDOFJointTrajectoryPoint[] points~%~%================================================================================~%MSG: trajectory_msgs/MultiDOFJointTrajectoryPoint~%# Each multi-dof joint can specify a transform (up to 6 DOF)~%geometry_msgs/Transform[] transforms~%~%# There can be a velocity specified for the origin of the joint ~%geometry_msgs/Twist[] velocities~%~%# There can be an acceleration specified for the origin of the joint ~%geometry_msgs/Twist[] accelerations~%~%duration time_from_start~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotTrajectories)))
  "Returns full string definition for message of type 'RobotTrajectories"
  (cl:format cl:nil "std_msgs/Header header~%moveit_msgs/RobotTrajectory cur_to_approach       # Array of trajectories to be executed by the robot from current pose to approach pose~%moveit_msgs/RobotTrajectory approach_to_pick  # Array of trajectories to be executed by the robot from approach pose to pick pose~%moveit_msgs/RobotTrajectory pick_to_retreat   # Array of trajectories to be executed by the robot from pick pose to retreat pose~%moveit_msgs/RobotTrajectory retreat_to_place  # Array of trajectories to be executed by the robot from retreat pose to place pose~%duration[] trajectory_delays                  # Time delays before each trajectory.  Use 0 for no delay~%duration[] execution_duration                 # Execution duration for each state of robot trajectories~%time pick_deadline                            # The deadline to reach pick pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: moveit_msgs/RobotTrajectory~%trajectory_msgs/JointTrajectory joint_trajectory~%trajectory_msgs/MultiDOFJointTrajectory multi_dof_joint_trajectory~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectory~%Header header~%string[] joint_names~%JointTrajectoryPoint[] points~%================================================================================~%MSG: trajectory_msgs/JointTrajectoryPoint~%# Each trajectory point specifies either positions[, velocities[, accelerations]]~%# or positions[, effort] for the trajectory to be executed.~%# All specified values are in the same order as the joint names in JointTrajectory.msg~%~%float64[] positions~%float64[] velocities~%float64[] accelerations~%float64[] effort~%duration time_from_start~%~%================================================================================~%MSG: trajectory_msgs/MultiDOFJointTrajectory~%# The header is used to specify the coordinate frame and the reference time for the trajectory durations~%Header header~%~%# A representation of a multi-dof joint trajectory (each point is a transformation)~%# Each point along the trajectory will include an array of positions/velocities/accelerations~%# that has the same length as the array of joint names, and has the same order of joints as ~%# the joint names array.~%~%string[] joint_names~%MultiDOFJointTrajectoryPoint[] points~%~%================================================================================~%MSG: trajectory_msgs/MultiDOFJointTrajectoryPoint~%# Each multi-dof joint can specify a transform (up to 6 DOF)~%geometry_msgs/Transform[] transforms~%~%# There can be a velocity specified for the origin of the joint ~%geometry_msgs/Twist[] velocities~%~%# There can be an acceleration specified for the origin of the joint ~%geometry_msgs/Twist[] accelerations~%~%duration time_from_start~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotTrajectories>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cur_to_approach))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'approach_to_pick))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pick_to_retreat))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'retreat_to_place))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'trajectory_delays) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'execution_duration) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotTrajectories>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotTrajectories
    (cl:cons ':header (header msg))
    (cl:cons ':cur_to_approach (cur_to_approach msg))
    (cl:cons ':approach_to_pick (approach_to_pick msg))
    (cl:cons ':pick_to_retreat (pick_to_retreat msg))
    (cl:cons ':retreat_to_place (retreat_to_place msg))
    (cl:cons ':trajectory_delays (trajectory_delays msg))
    (cl:cons ':execution_duration (execution_duration msg))
    (cl:cons ':pick_deadline (pick_deadline msg))
))
