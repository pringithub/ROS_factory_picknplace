; Auto-generated. Do not edit!


(cl:in-package hrwros_msgs-srv)


;//! \htmlinclude ConvertMetresToFeet-request.msg.html

(cl:defclass <ConvertMetresToFeet-request> (roslisp-msg-protocol:ros-message)
  ((distance_metres
    :reader distance_metres
    :initarg :distance_metres
    :type cl:float
    :initform 0.0))
)

(cl:defclass ConvertMetresToFeet-request (<ConvertMetresToFeet-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ConvertMetresToFeet-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ConvertMetresToFeet-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hrwros_msgs-srv:<ConvertMetresToFeet-request> is deprecated: use hrwros_msgs-srv:ConvertMetresToFeet-request instead.")))

(cl:ensure-generic-function 'distance_metres-val :lambda-list '(m))
(cl:defmethod distance_metres-val ((m <ConvertMetresToFeet-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hrwros_msgs-srv:distance_metres-val is deprecated.  Use hrwros_msgs-srv:distance_metres instead.")
  (distance_metres m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ConvertMetresToFeet-request>) ostream)
  "Serializes a message object of type '<ConvertMetresToFeet-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'distance_metres))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ConvertMetresToFeet-request>) istream)
  "Deserializes a message object of type '<ConvertMetresToFeet-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance_metres) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ConvertMetresToFeet-request>)))
  "Returns string type for a service object of type '<ConvertMetresToFeet-request>"
  "hrwros_msgs/ConvertMetresToFeetRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConvertMetresToFeet-request)))
  "Returns string type for a service object of type 'ConvertMetresToFeet-request"
  "hrwros_msgs/ConvertMetresToFeetRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ConvertMetresToFeet-request>)))
  "Returns md5sum for a message object of type '<ConvertMetresToFeet-request>"
  "8ee6357200ff4b8dfb11e637c7e317c0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ConvertMetresToFeet-request)))
  "Returns md5sum for a message object of type 'ConvertMetresToFeet-request"
  "8ee6357200ff4b8dfb11e637c7e317c0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ConvertMetresToFeet-request>)))
  "Returns full string definition for message of type '<ConvertMetresToFeet-request>"
  (cl:format cl:nil "float64 distance_metres~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ConvertMetresToFeet-request)))
  "Returns full string definition for message of type 'ConvertMetresToFeet-request"
  (cl:format cl:nil "float64 distance_metres~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ConvertMetresToFeet-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ConvertMetresToFeet-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ConvertMetresToFeet-request
    (cl:cons ':distance_metres (distance_metres msg))
))
;//! \htmlinclude ConvertMetresToFeet-response.msg.html

(cl:defclass <ConvertMetresToFeet-response> (roslisp-msg-protocol:ros-message)
  ((distance_feet
    :reader distance_feet
    :initarg :distance_feet
    :type cl:float
    :initform 0.0)
   (success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ConvertMetresToFeet-response (<ConvertMetresToFeet-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ConvertMetresToFeet-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ConvertMetresToFeet-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hrwros_msgs-srv:<ConvertMetresToFeet-response> is deprecated: use hrwros_msgs-srv:ConvertMetresToFeet-response instead.")))

(cl:ensure-generic-function 'distance_feet-val :lambda-list '(m))
(cl:defmethod distance_feet-val ((m <ConvertMetresToFeet-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hrwros_msgs-srv:distance_feet-val is deprecated.  Use hrwros_msgs-srv:distance_feet instead.")
  (distance_feet m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ConvertMetresToFeet-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hrwros_msgs-srv:success-val is deprecated.  Use hrwros_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ConvertMetresToFeet-response>) ostream)
  "Serializes a message object of type '<ConvertMetresToFeet-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'distance_feet))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ConvertMetresToFeet-response>) istream)
  "Deserializes a message object of type '<ConvertMetresToFeet-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance_feet) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ConvertMetresToFeet-response>)))
  "Returns string type for a service object of type '<ConvertMetresToFeet-response>"
  "hrwros_msgs/ConvertMetresToFeetResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConvertMetresToFeet-response)))
  "Returns string type for a service object of type 'ConvertMetresToFeet-response"
  "hrwros_msgs/ConvertMetresToFeetResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ConvertMetresToFeet-response>)))
  "Returns md5sum for a message object of type '<ConvertMetresToFeet-response>"
  "8ee6357200ff4b8dfb11e637c7e317c0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ConvertMetresToFeet-response)))
  "Returns md5sum for a message object of type 'ConvertMetresToFeet-response"
  "8ee6357200ff4b8dfb11e637c7e317c0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ConvertMetresToFeet-response>)))
  "Returns full string definition for message of type '<ConvertMetresToFeet-response>"
  (cl:format cl:nil "float64 distance_feet~%bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ConvertMetresToFeet-response)))
  "Returns full string definition for message of type 'ConvertMetresToFeet-response"
  (cl:format cl:nil "float64 distance_feet~%bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ConvertMetresToFeet-response>))
  (cl:+ 0
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ConvertMetresToFeet-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ConvertMetresToFeet-response
    (cl:cons ':distance_feet (distance_feet msg))
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ConvertMetresToFeet)))
  'ConvertMetresToFeet-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ConvertMetresToFeet)))
  'ConvertMetresToFeet-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConvertMetresToFeet)))
  "Returns string type for a service object of type '<ConvertMetresToFeet>"
  "hrwros_msgs/ConvertMetresToFeet")