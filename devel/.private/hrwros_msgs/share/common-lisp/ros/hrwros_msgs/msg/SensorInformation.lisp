; Auto-generated. Do not edit!


(cl:in-package hrwros_msgs-msg)


;//! \htmlinclude SensorInformation.msg.html

(cl:defclass <SensorInformation> (roslisp-msg-protocol:ros-message)
  ((sensor_data
    :reader sensor_data
    :initarg :sensor_data
    :type sensor_msgs-msg:Range
    :initform (cl:make-instance 'sensor_msgs-msg:Range))
   (maker_name
    :reader maker_name
    :initarg :maker_name
    :type cl:string
    :initform "")
   (part_number
    :reader part_number
    :initarg :part_number
    :type cl:integer
    :initform 0))
)

(cl:defclass SensorInformation (<SensorInformation>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SensorInformation>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SensorInformation)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hrwros_msgs-msg:<SensorInformation> is deprecated: use hrwros_msgs-msg:SensorInformation instead.")))

(cl:ensure-generic-function 'sensor_data-val :lambda-list '(m))
(cl:defmethod sensor_data-val ((m <SensorInformation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hrwros_msgs-msg:sensor_data-val is deprecated.  Use hrwros_msgs-msg:sensor_data instead.")
  (sensor_data m))

(cl:ensure-generic-function 'maker_name-val :lambda-list '(m))
(cl:defmethod maker_name-val ((m <SensorInformation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hrwros_msgs-msg:maker_name-val is deprecated.  Use hrwros_msgs-msg:maker_name instead.")
  (maker_name m))

(cl:ensure-generic-function 'part_number-val :lambda-list '(m))
(cl:defmethod part_number-val ((m <SensorInformation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hrwros_msgs-msg:part_number-val is deprecated.  Use hrwros_msgs-msg:part_number instead.")
  (part_number m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SensorInformation>) ostream)
  "Serializes a message object of type '<SensorInformation>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'sensor_data) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'maker_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'maker_name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'part_number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'part_number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'part_number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'part_number)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SensorInformation>) istream)
  "Deserializes a message object of type '<SensorInformation>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'sensor_data) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'maker_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'maker_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'part_number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'part_number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'part_number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'part_number)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SensorInformation>)))
  "Returns string type for a message object of type '<SensorInformation>"
  "hrwros_msgs/SensorInformation")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SensorInformation)))
  "Returns string type for a message object of type 'SensorInformation"
  "hrwros_msgs/SensorInformation")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SensorInformation>)))
  "Returns md5sum for a message object of type '<SensorInformation>"
  "d963bb325e7c9c7478db23eeb529f1eb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SensorInformation)))
  "Returns md5sum for a message object of type 'SensorInformation"
  "d963bb325e7c9c7478db23eeb529f1eb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SensorInformation>)))
  "Returns full string definition for message of type '<SensorInformation>"
  (cl:format cl:nil "sensor_msgs/Range sensor_data~%string maker_name~%uint32 part_number~%~%================================================================================~%MSG: sensor_msgs/Range~%# Single range reading from an active ranger that emits energy and reports~%# one range reading that is valid along an arc at the distance measured. ~%# This message is  not appropriate for laser scanners. See the LaserScan~%# message if you are working with a laser scanner.~%~%# This message also can represent a fixed-distance (binary) ranger.  This~%# sensor will have min_range===max_range===distance of detection.~%# These sensors follow REP 117 and will output -Inf if the object is detected~%# and +Inf if the object is outside of the detection range.~%~%Header header           # timestamp in the header is the time the ranger~%                        # returned the distance reading~%~%# Radiation type enums~%# If you want a value added to this list, send an email to the ros-users list~%uint8 ULTRASOUND=0~%uint8 INFRARED=1~%~%uint8 radiation_type    # the type of radiation used by the sensor~%                        # (sound, IR, etc) [enum]~%~%float32 field_of_view   # the size of the arc that the distance reading is~%                        # valid for [rad]~%                        # the object causing the range reading may have~%                        # been anywhere within -field_of_view/2 and~%                        # field_of_view/2 at the measured range. ~%                        # 0 angle corresponds to the x-axis of the sensor.~%~%float32 min_range       # minimum range value [m]~%float32 max_range       # maximum range value [m]~%                        # Fixed distance rangers require min_range==max_range~%~%float32 range           # range data [m]~%                        # (Note: values < range_min or > range_max~%                        # should be discarded)~%                        # Fixed distance rangers only output -Inf or +Inf.~%                        # -Inf represents a detection within fixed distance.~%                        # (Detection too close to the sensor to quantify)~%                        # +Inf represents no detection within the fixed distance.~%                        # (Object out of range)~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SensorInformation)))
  "Returns full string definition for message of type 'SensorInformation"
  (cl:format cl:nil "sensor_msgs/Range sensor_data~%string maker_name~%uint32 part_number~%~%================================================================================~%MSG: sensor_msgs/Range~%# Single range reading from an active ranger that emits energy and reports~%# one range reading that is valid along an arc at the distance measured. ~%# This message is  not appropriate for laser scanners. See the LaserScan~%# message if you are working with a laser scanner.~%~%# This message also can represent a fixed-distance (binary) ranger.  This~%# sensor will have min_range===max_range===distance of detection.~%# These sensors follow REP 117 and will output -Inf if the object is detected~%# and +Inf if the object is outside of the detection range.~%~%Header header           # timestamp in the header is the time the ranger~%                        # returned the distance reading~%~%# Radiation type enums~%# If you want a value added to this list, send an email to the ros-users list~%uint8 ULTRASOUND=0~%uint8 INFRARED=1~%~%uint8 radiation_type    # the type of radiation used by the sensor~%                        # (sound, IR, etc) [enum]~%~%float32 field_of_view   # the size of the arc that the distance reading is~%                        # valid for [rad]~%                        # the object causing the range reading may have~%                        # been anywhere within -field_of_view/2 and~%                        # field_of_view/2 at the measured range. ~%                        # 0 angle corresponds to the x-axis of the sensor.~%~%float32 min_range       # minimum range value [m]~%float32 max_range       # maximum range value [m]~%                        # Fixed distance rangers require min_range==max_range~%~%float32 range           # range data [m]~%                        # (Note: values < range_min or > range_max~%                        # should be discarded)~%                        # Fixed distance rangers only output -Inf or +Inf.~%                        # -Inf represents a detection within fixed distance.~%                        # (Detection too close to the sensor to quantify)~%                        # +Inf represents no detection within the fixed distance.~%                        # (Object out of range)~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SensorInformation>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'sensor_data))
     4 (cl:length (cl:slot-value msg 'maker_name))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SensorInformation>))
  "Converts a ROS message object to a list"
  (cl:list 'SensorInformation
    (cl:cons ':sensor_data (sensor_data msg))
    (cl:cons ':maker_name (maker_name msg))
    (cl:cons ':part_number (part_number msg))
))
