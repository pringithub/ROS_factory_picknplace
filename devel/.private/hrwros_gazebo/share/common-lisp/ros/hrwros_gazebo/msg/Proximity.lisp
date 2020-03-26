; Auto-generated. Do not edit!


(cl:in-package hrwros_gazebo-msg)


;//! \htmlinclude Proximity.msg.html

(cl:defclass <Proximity> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (object_detected
    :reader object_detected
    :initarg :object_detected
    :type cl:boolean
    :initform cl:nil)
   (min_range
    :reader min_range
    :initarg :min_range
    :type cl:float
    :initform 0.0)
   (max_range
    :reader max_range
    :initarg :max_range
    :type cl:float
    :initform 0.0))
)

(cl:defclass Proximity (<Proximity>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Proximity>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Proximity)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hrwros_gazebo-msg:<Proximity> is deprecated: use hrwros_gazebo-msg:Proximity instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Proximity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hrwros_gazebo-msg:header-val is deprecated.  Use hrwros_gazebo-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'object_detected-val :lambda-list '(m))
(cl:defmethod object_detected-val ((m <Proximity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hrwros_gazebo-msg:object_detected-val is deprecated.  Use hrwros_gazebo-msg:object_detected instead.")
  (object_detected m))

(cl:ensure-generic-function 'min_range-val :lambda-list '(m))
(cl:defmethod min_range-val ((m <Proximity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hrwros_gazebo-msg:min_range-val is deprecated.  Use hrwros_gazebo-msg:min_range instead.")
  (min_range m))

(cl:ensure-generic-function 'max_range-val :lambda-list '(m))
(cl:defmethod max_range-val ((m <Proximity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hrwros_gazebo-msg:max_range-val is deprecated.  Use hrwros_gazebo-msg:max_range instead.")
  (max_range m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Proximity>) ostream)
  "Serializes a message object of type '<Proximity>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'object_detected) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'min_range))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'max_range))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Proximity>) istream)
  "Deserializes a message object of type '<Proximity>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'object_detected) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'min_range) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_range) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Proximity>)))
  "Returns string type for a message object of type '<Proximity>"
  "hrwros_gazebo/Proximity")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Proximity)))
  "Returns string type for a message object of type 'Proximity"
  "hrwros_gazebo/Proximity")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Proximity>)))
  "Returns md5sum for a message object of type '<Proximity>"
  "7ba3dd0f5ec6df7b148eb145074dcc63")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Proximity)))
  "Returns md5sum for a message object of type 'Proximity"
  "7ba3dd0f5ec6df7b148eb145074dcc63")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Proximity>)))
  "Returns full string definition for message of type '<Proximity>"
  (cl:format cl:nil "# Single reading from a binary proximity sensor that detects the presence of~%# objects within its sensing range.~%Header header           # timestamp in the header is the time the sensor~%                        # returned the sensor reading~%bool object_detected    # is there something in the proximity of the sensor?~%float32 min_range       # minimum range value [m]~%float32 max_range       # maximum range value [m]~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Proximity)))
  "Returns full string definition for message of type 'Proximity"
  (cl:format cl:nil "# Single reading from a binary proximity sensor that detects the presence of~%# objects within its sensing range.~%Header header           # timestamp in the header is the time the sensor~%                        # returned the sensor reading~%bool object_detected    # is there something in the proximity of the sensor?~%float32 min_range       # minimum range value [m]~%float32 max_range       # maximum range value [m]~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Proximity>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Proximity>))
  "Converts a ROS message object to a list"
  (cl:list 'Proximity
    (cl:cons ':header (header msg))
    (cl:cons ':object_detected (object_detected msg))
    (cl:cons ':min_range (min_range msg))
    (cl:cons ':max_range (max_range msg))
))
