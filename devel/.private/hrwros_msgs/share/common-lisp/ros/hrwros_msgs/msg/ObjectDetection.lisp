; Auto-generated. Do not edit!


(cl:in-package hrwros_msgs-msg)


;//! \htmlinclude ObjectDetection.msg.html

(cl:defclass <ObjectDetection> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (detection_time
    :reader detection_time
    :initarg :detection_time
    :type cl:real
    :initform 0)
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass ObjectDetection (<ObjectDetection>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ObjectDetection>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ObjectDetection)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hrwros_msgs-msg:<ObjectDetection> is deprecated: use hrwros_msgs-msg:ObjectDetection instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ObjectDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hrwros_msgs-msg:header-val is deprecated.  Use hrwros_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <ObjectDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hrwros_msgs-msg:name-val is deprecated.  Use hrwros_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'detection_time-val :lambda-list '(m))
(cl:defmethod detection_time-val ((m <ObjectDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hrwros_msgs-msg:detection_time-val is deprecated.  Use hrwros_msgs-msg:detection_time instead.")
  (detection_time m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <ObjectDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hrwros_msgs-msg:pose-val is deprecated.  Use hrwros_msgs-msg:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ObjectDetection>) ostream)
  "Serializes a message object of type '<ObjectDetection>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'detection_time)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'detection_time) (cl:floor (cl:slot-value msg 'detection_time)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ObjectDetection>) istream)
  "Deserializes a message object of type '<ObjectDetection>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'detection_time) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ObjectDetection>)))
  "Returns string type for a message object of type '<ObjectDetection>"
  "hrwros_msgs/ObjectDetection")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObjectDetection)))
  "Returns string type for a message object of type 'ObjectDetection"
  "hrwros_msgs/ObjectDetection")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ObjectDetection>)))
  "Returns md5sum for a message object of type '<ObjectDetection>"
  "ef65ec4cbce1d0f9485816723aaa95bb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ObjectDetection)))
  "Returns md5sum for a message object of type 'ObjectDetection"
  "ef65ec4cbce1d0f9485816723aaa95bb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ObjectDetection>)))
  "Returns full string definition for message of type '<ObjectDetection>"
  (cl:format cl:nil "std_msgs/Header header    # Message Header~%string name               # Object name in a database~%time detection_time       # The time when the object was detected      ~%geometry_msgs/Pose pose   # Pose of the object observed at the detection time~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ObjectDetection)))
  "Returns full string definition for message of type 'ObjectDetection"
  (cl:format cl:nil "std_msgs/Header header    # Message Header~%string name               # Object name in a database~%time detection_time       # The time when the object was detected      ~%geometry_msgs/Pose pose   # Pose of the object observed at the detection time~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ObjectDetection>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'name))
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ObjectDetection>))
  "Converts a ROS message object to a list"
  (cl:list 'ObjectDetection
    (cl:cons ':header (header msg))
    (cl:cons ':name (name msg))
    (cl:cons ':detection_time (detection_time msg))
    (cl:cons ':pose (pose msg))
))
