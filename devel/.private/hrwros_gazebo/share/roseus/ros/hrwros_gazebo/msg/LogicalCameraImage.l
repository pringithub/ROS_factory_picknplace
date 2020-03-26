;; Auto-generated. Do not edit!


(when (boundp 'hrwros_gazebo::LogicalCameraImage)
  (if (not (find-package "HRWROS_GAZEBO"))
    (make-package "HRWROS_GAZEBO"))
  (shadow 'LogicalCameraImage (find-package "HRWROS_GAZEBO")))
(unless (find-package "HRWROS_GAZEBO::LOGICALCAMERAIMAGE")
  (make-package "HRWROS_GAZEBO::LOGICALCAMERAIMAGE"))

(in-package "ROS")
;;//! \htmlinclude LogicalCameraImage.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass hrwros_gazebo::LogicalCameraImage
  :super ros::object
  :slots (_models _pose ))

(defmethod hrwros_gazebo::LogicalCameraImage
  (:init
   (&key
    ((:models __models) (let (r) (dotimes (i 0) (push (instance hrwros_gazebo::Model :init) r)) r))
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _models __models)
   (setq _pose __pose)
   self)
  (:models
   (&rest __models)
   (if (keywordp (car __models))
       (send* _models __models)
     (progn
       (if __models (setq _models (car __models)))
       _models)))
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:serialization-length
   ()
   (+
    ;; hrwros_gazebo/Model[] _models
    (apply #'+ (send-all _models :serialization-length)) 4
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; hrwros_gazebo/Model[] _models
     (write-long (length _models) s)
     (dolist (elem _models)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; hrwros_gazebo/Model[] _models
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _models (let (r) (dotimes (i n) (push (instance hrwros_gazebo::Model :init) r)) r))
     (dolist (elem- _models)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(setf (get hrwros_gazebo::LogicalCameraImage :md5sum-) "8d82d9667c3484c611dd31e2f750668a")
(setf (get hrwros_gazebo::LogicalCameraImage :datatype-) "hrwros_gazebo/LogicalCameraImage")
(setf (get hrwros_gazebo::LogicalCameraImage :definition-)
      "# Logical camera image message
Model[] models                  # models detected (poses in the frame of the camera)
geometry_msgs/Pose pose         # camera pose

================================================================================
MSG: hrwros_gazebo/Model
string type                     # model type
geometry_msgs/Pose pose         # model pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :hrwros_gazebo/LogicalCameraImage "8d82d9667c3484c611dd31e2f750668a")


