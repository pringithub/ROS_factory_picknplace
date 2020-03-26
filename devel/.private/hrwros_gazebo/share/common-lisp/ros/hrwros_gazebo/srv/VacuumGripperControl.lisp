; Auto-generated. Do not edit!


(cl:in-package hrwros_gazebo-srv)


;//! \htmlinclude VacuumGripperControl-request.msg.html

(cl:defclass <VacuumGripperControl-request> (roslisp-msg-protocol:ros-message)
  ((enable
    :reader enable
    :initarg :enable
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass VacuumGripperControl-request (<VacuumGripperControl-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VacuumGripperControl-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VacuumGripperControl-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hrwros_gazebo-srv:<VacuumGripperControl-request> is deprecated: use hrwros_gazebo-srv:VacuumGripperControl-request instead.")))

(cl:ensure-generic-function 'enable-val :lambda-list '(m))
(cl:defmethod enable-val ((m <VacuumGripperControl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hrwros_gazebo-srv:enable-val is deprecated.  Use hrwros_gazebo-srv:enable instead.")
  (enable m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VacuumGripperControl-request>) ostream)
  "Serializes a message object of type '<VacuumGripperControl-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enable) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VacuumGripperControl-request>) istream)
  "Deserializes a message object of type '<VacuumGripperControl-request>"
    (cl:setf (cl:slot-value msg 'enable) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VacuumGripperControl-request>)))
  "Returns string type for a service object of type '<VacuumGripperControl-request>"
  "hrwros_gazebo/VacuumGripperControlRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VacuumGripperControl-request)))
  "Returns string type for a service object of type 'VacuumGripperControl-request"
  "hrwros_gazebo/VacuumGripperControlRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VacuumGripperControl-request>)))
  "Returns md5sum for a message object of type '<VacuumGripperControl-request>"
  "6a0b406242562fc416b2c9c8a3efb051")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VacuumGripperControl-request)))
  "Returns md5sum for a message object of type 'VacuumGripperControl-request"
  "6a0b406242562fc416b2c9c8a3efb051")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VacuumGripperControl-request>)))
  "Returns full string definition for message of type '<VacuumGripperControl-request>"
  (cl:format cl:nil "~%~%~%bool enable~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VacuumGripperControl-request)))
  "Returns full string definition for message of type 'VacuumGripperControl-request"
  (cl:format cl:nil "~%~%~%bool enable~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VacuumGripperControl-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VacuumGripperControl-request>))
  "Converts a ROS message object to a list"
  (cl:list 'VacuumGripperControl-request
    (cl:cons ':enable (enable msg))
))
;//! \htmlinclude VacuumGripperControl-response.msg.html

(cl:defclass <VacuumGripperControl-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass VacuumGripperControl-response (<VacuumGripperControl-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VacuumGripperControl-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VacuumGripperControl-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hrwros_gazebo-srv:<VacuumGripperControl-response> is deprecated: use hrwros_gazebo-srv:VacuumGripperControl-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <VacuumGripperControl-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hrwros_gazebo-srv:success-val is deprecated.  Use hrwros_gazebo-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VacuumGripperControl-response>) ostream)
  "Serializes a message object of type '<VacuumGripperControl-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VacuumGripperControl-response>) istream)
  "Deserializes a message object of type '<VacuumGripperControl-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VacuumGripperControl-response>)))
  "Returns string type for a service object of type '<VacuumGripperControl-response>"
  "hrwros_gazebo/VacuumGripperControlResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VacuumGripperControl-response)))
  "Returns string type for a service object of type 'VacuumGripperControl-response"
  "hrwros_gazebo/VacuumGripperControlResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VacuumGripperControl-response>)))
  "Returns md5sum for a message object of type '<VacuumGripperControl-response>"
  "6a0b406242562fc416b2c9c8a3efb051")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VacuumGripperControl-response)))
  "Returns md5sum for a message object of type 'VacuumGripperControl-response"
  "6a0b406242562fc416b2c9c8a3efb051")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VacuumGripperControl-response>)))
  "Returns full string definition for message of type '<VacuumGripperControl-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VacuumGripperControl-response)))
  "Returns full string definition for message of type 'VacuumGripperControl-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VacuumGripperControl-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VacuumGripperControl-response>))
  "Converts a ROS message object to a list"
  (cl:list 'VacuumGripperControl-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'VacuumGripperControl)))
  'VacuumGripperControl-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'VacuumGripperControl)))
  'VacuumGripperControl-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VacuumGripperControl)))
  "Returns string type for a service object of type '<VacuumGripperControl>"
  "hrwros_gazebo/VacuumGripperControl")