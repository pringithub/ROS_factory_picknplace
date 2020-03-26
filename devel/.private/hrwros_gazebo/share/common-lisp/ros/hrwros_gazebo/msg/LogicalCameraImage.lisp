; Auto-generated. Do not edit!


(cl:in-package hrwros_gazebo-msg)


;//! \htmlinclude LogicalCameraImage.msg.html

(cl:defclass <LogicalCameraImage> (roslisp-msg-protocol:ros-message)
  ((models
    :reader models
    :initarg :models
    :type (cl:vector hrwros_gazebo-msg:Model)
   :initform (cl:make-array 0 :element-type 'hrwros_gazebo-msg:Model :initial-element (cl:make-instance 'hrwros_gazebo-msg:Model)))
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass LogicalCameraImage (<LogicalCameraImage>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LogicalCameraImage>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LogicalCameraImage)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hrwros_gazebo-msg:<LogicalCameraImage> is deprecated: use hrwros_gazebo-msg:LogicalCameraImage instead.")))

(cl:ensure-generic-function 'models-val :lambda-list '(m))
(cl:defmethod models-val ((m <LogicalCameraImage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hrwros_gazebo-msg:models-val is deprecated.  Use hrwros_gazebo-msg:models instead.")
  (models m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <LogicalCameraImage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hrwros_gazebo-msg:pose-val is deprecated.  Use hrwros_gazebo-msg:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LogicalCameraImage>) ostream)
  "Serializes a message object of type '<LogicalCameraImage>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'models))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'models))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LogicalCameraImage>) istream)
  "Deserializes a message object of type '<LogicalCameraImage>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'models) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'models)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'hrwros_gazebo-msg:Model))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LogicalCameraImage>)))
  "Returns string type for a message object of type '<LogicalCameraImage>"
  "hrwros_gazebo/LogicalCameraImage")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LogicalCameraImage)))
  "Returns string type for a message object of type 'LogicalCameraImage"
  "hrwros_gazebo/LogicalCameraImage")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LogicalCameraImage>)))
  "Returns md5sum for a message object of type '<LogicalCameraImage>"
  "8d82d9667c3484c611dd31e2f750668a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LogicalCameraImage)))
  "Returns md5sum for a message object of type 'LogicalCameraImage"
  "8d82d9667c3484c611dd31e2f750668a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LogicalCameraImage>)))
  "Returns full string definition for message of type '<LogicalCameraImage>"
  (cl:format cl:nil "# Logical camera image message~%Model[] models                  # models detected (poses in the frame of the camera)~%geometry_msgs/Pose pose         # camera pose~%~%================================================================================~%MSG: hrwros_gazebo/Model~%string type                     # model type~%geometry_msgs/Pose pose         # model pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LogicalCameraImage)))
  "Returns full string definition for message of type 'LogicalCameraImage"
  (cl:format cl:nil "# Logical camera image message~%Model[] models                  # models detected (poses in the frame of the camera)~%geometry_msgs/Pose pose         # camera pose~%~%================================================================================~%MSG: hrwros_gazebo/Model~%string type                     # model type~%geometry_msgs/Pose pose         # model pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LogicalCameraImage>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'models) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LogicalCameraImage>))
  "Converts a ROS message object to a list"
  (cl:list 'LogicalCameraImage
    (cl:cons ':models (models msg))
    (cl:cons ':pose (pose msg))
))
