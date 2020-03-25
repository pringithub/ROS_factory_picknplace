;; Auto-generated. Do not edit!


(when (boundp 'hrwros_msgs::TargetToolPoses)
  (if (not (find-package "HRWROS_MSGS"))
    (make-package "HRWROS_MSGS"))
  (shadow 'TargetToolPoses (find-package "HRWROS_MSGS")))
(unless (find-package "HRWROS_MSGS::TARGETTOOLPOSES")
  (make-package "HRWROS_MSGS::TARGETTOOLPOSES"))

(in-package "ROS")
;;//! \htmlinclude TargetToolPoses.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass hrwros_msgs::TargetToolPoses
  :super ros::object
  :slots (_header _pick_approach _pick_pose _pick_retreat _place_pose ))

(defmethod hrwros_msgs::TargetToolPoses
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:pick_approach __pick_approach) (instance geometry_msgs::PoseStamped :init))
    ((:pick_pose __pick_pose) (instance geometry_msgs::PoseStamped :init))
    ((:pick_retreat __pick_retreat) (instance geometry_msgs::PoseStamped :init))
    ((:place_pose __place_pose) (instance geometry_msgs::PoseStamped :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _pick_approach __pick_approach)
   (setq _pick_pose __pick_pose)
   (setq _pick_retreat __pick_retreat)
   (setq _place_pose __place_pose)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:pick_approach
   (&rest __pick_approach)
   (if (keywordp (car __pick_approach))
       (send* _pick_approach __pick_approach)
     (progn
       (if __pick_approach (setq _pick_approach (car __pick_approach)))
       _pick_approach)))
  (:pick_pose
   (&rest __pick_pose)
   (if (keywordp (car __pick_pose))
       (send* _pick_pose __pick_pose)
     (progn
       (if __pick_pose (setq _pick_pose (car __pick_pose)))
       _pick_pose)))
  (:pick_retreat
   (&rest __pick_retreat)
   (if (keywordp (car __pick_retreat))
       (send* _pick_retreat __pick_retreat)
     (progn
       (if __pick_retreat (setq _pick_retreat (car __pick_retreat)))
       _pick_retreat)))
  (:place_pose
   (&rest __place_pose)
   (if (keywordp (car __place_pose))
       (send* _place_pose __place_pose)
     (progn
       (if __place_pose (setq _place_pose (car __place_pose)))
       _place_pose)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/PoseStamped _pick_approach
    (send _pick_approach :serialization-length)
    ;; geometry_msgs/PoseStamped _pick_pose
    (send _pick_pose :serialization-length)
    ;; geometry_msgs/PoseStamped _pick_retreat
    (send _pick_retreat :serialization-length)
    ;; geometry_msgs/PoseStamped _place_pose
    (send _place_pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/PoseStamped _pick_approach
       (send _pick_approach :serialize s)
     ;; geometry_msgs/PoseStamped _pick_pose
       (send _pick_pose :serialize s)
     ;; geometry_msgs/PoseStamped _pick_retreat
       (send _pick_retreat :serialize s)
     ;; geometry_msgs/PoseStamped _place_pose
       (send _place_pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/PoseStamped _pick_approach
     (send _pick_approach :deserialize buf ptr-) (incf ptr- (send _pick_approach :serialization-length))
   ;; geometry_msgs/PoseStamped _pick_pose
     (send _pick_pose :deserialize buf ptr-) (incf ptr- (send _pick_pose :serialization-length))
   ;; geometry_msgs/PoseStamped _pick_retreat
     (send _pick_retreat :deserialize buf ptr-) (incf ptr- (send _pick_retreat :serialization-length))
   ;; geometry_msgs/PoseStamped _place_pose
     (send _place_pose :deserialize buf ptr-) (incf ptr- (send _place_pose :serialization-length))
   ;;
   self)
  )

(setf (get hrwros_msgs::TargetToolPoses :md5sum-) "92d21c88158c4209a26e8da56b2c4ba2")
(setf (get hrwros_msgs::TargetToolPoses :datatype-) "hrwros_msgs/TargetToolPoses")
(setf (get hrwros_msgs::TargetToolPoses :definition-)
      "std_msgs/Header header
geometry_msgs/PoseStamped pick_approach  # Robot tool pose right before picking
geometry_msgs/PoseStamped pick_pose      # Robot tool makes contact with the object and closes its gripper
geometry_msgs/PoseStamped pick_retreat   # Robot tool moves the object away from its resting surface
geometry_msgs/PoseStamped place_pose     # Robot tool moves object to this location and opens gripper

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
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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



(provide :hrwros_msgs/TargetToolPoses "92d21c88158c4209a26e8da56b2c4ba2")


