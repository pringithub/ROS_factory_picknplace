; Auto-generated. Do not edit!


(cl:in-package hrwros_gazebo-srv)


;//! \htmlinclude ConveyorBeltControl-request.msg.html

(cl:defclass <ConveyorBeltControl-request> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type hrwros_gazebo-msg:ConveyorBeltState
    :initform (cl:make-instance 'hrwros_gazebo-msg:ConveyorBeltState)))
)

(cl:defclass ConveyorBeltControl-request (<ConveyorBeltControl-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ConveyorBeltControl-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ConveyorBeltControl-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hrwros_gazebo-srv:<ConveyorBeltControl-request> is deprecated: use hrwros_gazebo-srv:ConveyorBeltControl-request instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <ConveyorBeltControl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hrwros_gazebo-srv:state-val is deprecated.  Use hrwros_gazebo-srv:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ConveyorBeltControl-request>) ostream)
  "Serializes a message object of type '<ConveyorBeltControl-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'state) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ConveyorBeltControl-request>) istream)
  "Deserializes a message object of type '<ConveyorBeltControl-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'state) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ConveyorBeltControl-request>)))
  "Returns string type for a service object of type '<ConveyorBeltControl-request>"
  "hrwros_gazebo/ConveyorBeltControlRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConveyorBeltControl-request)))
  "Returns string type for a service object of type 'ConveyorBeltControl-request"
  "hrwros_gazebo/ConveyorBeltControlRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ConveyorBeltControl-request>)))
  "Returns md5sum for a message object of type '<ConveyorBeltControl-request>"
  "9530768849645096e15ae7f875771ab2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ConveyorBeltControl-request)))
  "Returns md5sum for a message object of type 'ConveyorBeltControl-request"
  "9530768849645096e15ae7f875771ab2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ConveyorBeltControl-request>)))
  "Returns full string definition for message of type '<ConveyorBeltControl-request>"
  (cl:format cl:nil "~%~%~%ConveyorBeltState state~%~%~%================================================================================~%MSG: hrwros_gazebo/ConveyorBeltState~%# Conveyor belt state message~%float64 power    # power of the belt (percentage, in +Y direction of belt frame)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ConveyorBeltControl-request)))
  "Returns full string definition for message of type 'ConveyorBeltControl-request"
  (cl:format cl:nil "~%~%~%ConveyorBeltState state~%~%~%================================================================================~%MSG: hrwros_gazebo/ConveyorBeltState~%# Conveyor belt state message~%float64 power    # power of the belt (percentage, in +Y direction of belt frame)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ConveyorBeltControl-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'state))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ConveyorBeltControl-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ConveyorBeltControl-request
    (cl:cons ':state (state msg))
))
;//! \htmlinclude ConveyorBeltControl-response.msg.html

(cl:defclass <ConveyorBeltControl-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ConveyorBeltControl-response (<ConveyorBeltControl-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ConveyorBeltControl-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ConveyorBeltControl-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hrwros_gazebo-srv:<ConveyorBeltControl-response> is deprecated: use hrwros_gazebo-srv:ConveyorBeltControl-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ConveyorBeltControl-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hrwros_gazebo-srv:success-val is deprecated.  Use hrwros_gazebo-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ConveyorBeltControl-response>) ostream)
  "Serializes a message object of type '<ConveyorBeltControl-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ConveyorBeltControl-response>) istream)
  "Deserializes a message object of type '<ConveyorBeltControl-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ConveyorBeltControl-response>)))
  "Returns string type for a service object of type '<ConveyorBeltControl-response>"
  "hrwros_gazebo/ConveyorBeltControlResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConveyorBeltControl-response)))
  "Returns string type for a service object of type 'ConveyorBeltControl-response"
  "hrwros_gazebo/ConveyorBeltControlResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ConveyorBeltControl-response>)))
  "Returns md5sum for a message object of type '<ConveyorBeltControl-response>"
  "9530768849645096e15ae7f875771ab2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ConveyorBeltControl-response)))
  "Returns md5sum for a message object of type 'ConveyorBeltControl-response"
  "9530768849645096e15ae7f875771ab2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ConveyorBeltControl-response>)))
  "Returns full string definition for message of type '<ConveyorBeltControl-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ConveyorBeltControl-response)))
  "Returns full string definition for message of type 'ConveyorBeltControl-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ConveyorBeltControl-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ConveyorBeltControl-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ConveyorBeltControl-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ConveyorBeltControl)))
  'ConveyorBeltControl-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ConveyorBeltControl)))
  'ConveyorBeltControl-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConveyorBeltControl)))
  "Returns string type for a service object of type '<ConveyorBeltControl>"
  "hrwros_gazebo/ConveyorBeltControl")