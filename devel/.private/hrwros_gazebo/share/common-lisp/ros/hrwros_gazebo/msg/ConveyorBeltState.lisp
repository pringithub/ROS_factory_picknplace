; Auto-generated. Do not edit!


(cl:in-package hrwros_gazebo-msg)


;//! \htmlinclude ConveyorBeltState.msg.html

(cl:defclass <ConveyorBeltState> (roslisp-msg-protocol:ros-message)
  ((power
    :reader power
    :initarg :power
    :type cl:float
    :initform 0.0))
)

(cl:defclass ConveyorBeltState (<ConveyorBeltState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ConveyorBeltState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ConveyorBeltState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hrwros_gazebo-msg:<ConveyorBeltState> is deprecated: use hrwros_gazebo-msg:ConveyorBeltState instead.")))

(cl:ensure-generic-function 'power-val :lambda-list '(m))
(cl:defmethod power-val ((m <ConveyorBeltState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hrwros_gazebo-msg:power-val is deprecated.  Use hrwros_gazebo-msg:power instead.")
  (power m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ConveyorBeltState>) ostream)
  "Serializes a message object of type '<ConveyorBeltState>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'power))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ConveyorBeltState>) istream)
  "Deserializes a message object of type '<ConveyorBeltState>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'power) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ConveyorBeltState>)))
  "Returns string type for a message object of type '<ConveyorBeltState>"
  "hrwros_gazebo/ConveyorBeltState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConveyorBeltState)))
  "Returns string type for a message object of type 'ConveyorBeltState"
  "hrwros_gazebo/ConveyorBeltState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ConveyorBeltState>)))
  "Returns md5sum for a message object of type '<ConveyorBeltState>"
  "b61bda1d4e0075084b2082bebb59ea34")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ConveyorBeltState)))
  "Returns md5sum for a message object of type 'ConveyorBeltState"
  "b61bda1d4e0075084b2082bebb59ea34")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ConveyorBeltState>)))
  "Returns full string definition for message of type '<ConveyorBeltState>"
  (cl:format cl:nil "# Conveyor belt state message~%float64 power    # power of the belt (percentage, in +Y direction of belt frame)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ConveyorBeltState)))
  "Returns full string definition for message of type 'ConveyorBeltState"
  (cl:format cl:nil "# Conveyor belt state message~%float64 power    # power of the belt (percentage, in +Y direction of belt frame)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ConveyorBeltState>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ConveyorBeltState>))
  "Converts a ROS message object to a list"
  (cl:list 'ConveyorBeltState
    (cl:cons ':power (power msg))
))
