; Auto-generated. Do not edit!


(cl:in-package hrwros_gazebo-msg)


;//! \htmlinclude VacuumGripperState.msg.html

(cl:defclass <VacuumGripperState> (roslisp-msg-protocol:ros-message)
  ((enabled
    :reader enabled
    :initarg :enabled
    :type cl:boolean
    :initform cl:nil)
   (attached
    :reader attached
    :initarg :attached
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass VacuumGripperState (<VacuumGripperState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VacuumGripperState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VacuumGripperState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hrwros_gazebo-msg:<VacuumGripperState> is deprecated: use hrwros_gazebo-msg:VacuumGripperState instead.")))

(cl:ensure-generic-function 'enabled-val :lambda-list '(m))
(cl:defmethod enabled-val ((m <VacuumGripperState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hrwros_gazebo-msg:enabled-val is deprecated.  Use hrwros_gazebo-msg:enabled instead.")
  (enabled m))

(cl:ensure-generic-function 'attached-val :lambda-list '(m))
(cl:defmethod attached-val ((m <VacuumGripperState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hrwros_gazebo-msg:attached-val is deprecated.  Use hrwros_gazebo-msg:attached instead.")
  (attached m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VacuumGripperState>) ostream)
  "Serializes a message object of type '<VacuumGripperState>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enabled) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'attached) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VacuumGripperState>) istream)
  "Deserializes a message object of type '<VacuumGripperState>"
    (cl:setf (cl:slot-value msg 'enabled) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'attached) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VacuumGripperState>)))
  "Returns string type for a message object of type '<VacuumGripperState>"
  "hrwros_gazebo/VacuumGripperState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VacuumGripperState)))
  "Returns string type for a message object of type 'VacuumGripperState"
  "hrwros_gazebo/VacuumGripperState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VacuumGripperState>)))
  "Returns md5sum for a message object of type '<VacuumGripperState>"
  "60714eed20fb6d744d2c10a1fb15dc69")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VacuumGripperState)))
  "Returns md5sum for a message object of type 'VacuumGripperState"
  "60714eed20fb6d744d2c10a1fb15dc69")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VacuumGripperState>)))
  "Returns full string definition for message of type '<VacuumGripperState>"
  (cl:format cl:nil "# Vacum gripper state message~%# This structure contains the state of the gripper.~%~%# Is the suction enabled?~%bool enabled~%~%# Is an object attached to the gripper?~%bool attached~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VacuumGripperState)))
  "Returns full string definition for message of type 'VacuumGripperState"
  (cl:format cl:nil "# Vacum gripper state message~%# This structure contains the state of the gripper.~%~%# Is the suction enabled?~%bool enabled~%~%# Is an object attached to the gripper?~%bool attached~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VacuumGripperState>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VacuumGripperState>))
  "Converts a ROS message object to a list"
  (cl:list 'VacuumGripperState
    (cl:cons ':enabled (enabled msg))
    (cl:cons ':attached (attached msg))
))
