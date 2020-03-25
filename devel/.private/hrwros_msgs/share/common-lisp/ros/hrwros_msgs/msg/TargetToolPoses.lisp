; Auto-generated. Do not edit!


(cl:in-package hrwros_msgs-msg)


;//! \htmlinclude TargetToolPoses.msg.html

(cl:defclass <TargetToolPoses> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (pick_approach
    :reader pick_approach
    :initarg :pick_approach
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (pick_pose
    :reader pick_pose
    :initarg :pick_pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (pick_retreat
    :reader pick_retreat
    :initarg :pick_retreat
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (place_pose
    :reader place_pose
    :initarg :place_pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped)))
)

(cl:defclass TargetToolPoses (<TargetToolPoses>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TargetToolPoses>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TargetToolPoses)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hrwros_msgs-msg:<TargetToolPoses> is deprecated: use hrwros_msgs-msg:TargetToolPoses instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <TargetToolPoses>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hrwros_msgs-msg:header-val is deprecated.  Use hrwros_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'pick_approach-val :lambda-list '(m))
(cl:defmethod pick_approach-val ((m <TargetToolPoses>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hrwros_msgs-msg:pick_approach-val is deprecated.  Use hrwros_msgs-msg:pick_approach instead.")
  (pick_approach m))

(cl:ensure-generic-function 'pick_pose-val :lambda-list '(m))
(cl:defmethod pick_pose-val ((m <TargetToolPoses>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hrwros_msgs-msg:pick_pose-val is deprecated.  Use hrwros_msgs-msg:pick_pose instead.")
  (pick_pose m))

(cl:ensure-generic-function 'pick_retreat-val :lambda-list '(m))
(cl:defmethod pick_retreat-val ((m <TargetToolPoses>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hrwros_msgs-msg:pick_retreat-val is deprecated.  Use hrwros_msgs-msg:pick_retreat instead.")
  (pick_retreat m))

(cl:ensure-generic-function 'place_pose-val :lambda-list '(m))
(cl:defmethod place_pose-val ((m <TargetToolPoses>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hrwros_msgs-msg:place_pose-val is deprecated.  Use hrwros_msgs-msg:place_pose instead.")
  (place_pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TargetToolPoses>) ostream)
  "Serializes a message object of type '<TargetToolPoses>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pick_approach) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pick_pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pick_retreat) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'place_pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TargetToolPoses>) istream)
  "Deserializes a message object of type '<TargetToolPoses>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pick_approach) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pick_pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pick_retreat) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'place_pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TargetToolPoses>)))
  "Returns string type for a message object of type '<TargetToolPoses>"
  "hrwros_msgs/TargetToolPoses")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TargetToolPoses)))
  "Returns string type for a message object of type 'TargetToolPoses"
  "hrwros_msgs/TargetToolPoses")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TargetToolPoses>)))
  "Returns md5sum for a message object of type '<TargetToolPoses>"
  "92d21c88158c4209a26e8da56b2c4ba2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TargetToolPoses)))
  "Returns md5sum for a message object of type 'TargetToolPoses"
  "92d21c88158c4209a26e8da56b2c4ba2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TargetToolPoses>)))
  "Returns full string definition for message of type '<TargetToolPoses>"
  (cl:format cl:nil "std_msgs/Header header~%geometry_msgs/PoseStamped pick_approach  # Robot tool pose right before picking~%geometry_msgs/PoseStamped pick_pose      # Robot tool makes contact with the object and closes its gripper~%geometry_msgs/PoseStamped pick_retreat   # Robot tool moves the object away from its resting surface~%geometry_msgs/PoseStamped place_pose     # Robot tool moves object to this location and opens gripper~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TargetToolPoses)))
  "Returns full string definition for message of type 'TargetToolPoses"
  (cl:format cl:nil "std_msgs/Header header~%geometry_msgs/PoseStamped pick_approach  # Robot tool pose right before picking~%geometry_msgs/PoseStamped pick_pose      # Robot tool makes contact with the object and closes its gripper~%geometry_msgs/PoseStamped pick_retreat   # Robot tool moves the object away from its resting surface~%geometry_msgs/PoseStamped place_pose     # Robot tool moves object to this location and opens gripper~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TargetToolPoses>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pick_approach))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pick_pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pick_retreat))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'place_pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TargetToolPoses>))
  "Converts a ROS message object to a list"
  (cl:list 'TargetToolPoses
    (cl:cons ':header (header msg))
    (cl:cons ':pick_approach (pick_approach msg))
    (cl:cons ':pick_pose (pick_pose msg))
    (cl:cons ':pick_retreat (pick_retreat msg))
    (cl:cons ':place_pose (place_pose msg))
))
