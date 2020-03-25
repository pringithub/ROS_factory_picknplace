;; Auto-generated. Do not edit!


(when (boundp 'hrwros_msgs::ObjectDetection)
  (if (not (find-package "HRWROS_MSGS"))
    (make-package "HRWROS_MSGS"))
  (shadow 'ObjectDetection (find-package "HRWROS_MSGS")))
(unless (find-package "HRWROS_MSGS::OBJECTDETECTION")
  (make-package "HRWROS_MSGS::OBJECTDETECTION"))

(in-package "ROS")
;;//! \htmlinclude ObjectDetection.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass hrwros_msgs::ObjectDetection
  :super ros::object
  :slots (_header _name _detection_time _pose ))

(defmethod hrwros_msgs::ObjectDetection
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:name __name) "")
    ((:detection_time __detection_time) (instance ros::time :init))
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _name (string __name))
   (setq _detection_time __detection_time)
   (setq _pose __pose)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:detection_time
   (&optional __detection_time)
   (if __detection_time (setq _detection_time __detection_time)) _detection_time)
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
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _name
    4 (length _name)
    ;; time _detection_time
    8
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; time _detection_time
       (write-long (send _detection_time :sec) s) (write-long (send _detection_time :nsec) s)
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; time _detection_time
     (send _detection_time :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _detection_time :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(setf (get hrwros_msgs::ObjectDetection :md5sum-) "ef65ec4cbce1d0f9485816723aaa95bb")
(setf (get hrwros_msgs::ObjectDetection :datatype-) "hrwros_msgs/ObjectDetection")
(setf (get hrwros_msgs::ObjectDetection :definition-)
      "std_msgs/Header header    # Message Header
string name               # Object name in a database
time detection_time       # The time when the object was detected      
geometry_msgs/Pose pose   # Pose of the object observed at the detection time

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

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



(provide :hrwros_msgs/ObjectDetection "ef65ec4cbce1d0f9485816723aaa95bb")


