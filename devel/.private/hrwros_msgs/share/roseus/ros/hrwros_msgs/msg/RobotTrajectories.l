;; Auto-generated. Do not edit!


(when (boundp 'hrwros_msgs::RobotTrajectories)
  (if (not (find-package "HRWROS_MSGS"))
    (make-package "HRWROS_MSGS"))
  (shadow 'RobotTrajectories (find-package "HRWROS_MSGS")))
(unless (find-package "HRWROS_MSGS::ROBOTTRAJECTORIES")
  (make-package "HRWROS_MSGS::ROBOTTRAJECTORIES"))

(in-package "ROS")
;;//! \htmlinclude RobotTrajectories.msg.html
(if (not (find-package "MOVEIT_MSGS"))
  (ros::roseus-add-msgs "moveit_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass hrwros_msgs::RobotTrajectories
  :super ros::object
  :slots (_header _cur_to_approach _approach_to_pick _pick_to_retreat _retreat_to_place _trajectory_delays _execution_duration _pick_deadline ))

(defmethod hrwros_msgs::RobotTrajectories
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:cur_to_approach __cur_to_approach) (instance moveit_msgs::RobotTrajectory :init))
    ((:approach_to_pick __approach_to_pick) (instance moveit_msgs::RobotTrajectory :init))
    ((:pick_to_retreat __pick_to_retreat) (instance moveit_msgs::RobotTrajectory :init))
    ((:retreat_to_place __retreat_to_place) (instance moveit_msgs::RobotTrajectory :init))
    ((:trajectory_delays __trajectory_delays) (let (r) (dotimes (i 0) (push (instance ros::time :init) r)) r))
    ((:execution_duration __execution_duration) (let (r) (dotimes (i 0) (push (instance ros::time :init) r)) r))
    ((:pick_deadline __pick_deadline) (instance ros::time :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _cur_to_approach __cur_to_approach)
   (setq _approach_to_pick __approach_to_pick)
   (setq _pick_to_retreat __pick_to_retreat)
   (setq _retreat_to_place __retreat_to_place)
   (setq _trajectory_delays __trajectory_delays)
   (setq _execution_duration __execution_duration)
   (setq _pick_deadline __pick_deadline)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:cur_to_approach
   (&rest __cur_to_approach)
   (if (keywordp (car __cur_to_approach))
       (send* _cur_to_approach __cur_to_approach)
     (progn
       (if __cur_to_approach (setq _cur_to_approach (car __cur_to_approach)))
       _cur_to_approach)))
  (:approach_to_pick
   (&rest __approach_to_pick)
   (if (keywordp (car __approach_to_pick))
       (send* _approach_to_pick __approach_to_pick)
     (progn
       (if __approach_to_pick (setq _approach_to_pick (car __approach_to_pick)))
       _approach_to_pick)))
  (:pick_to_retreat
   (&rest __pick_to_retreat)
   (if (keywordp (car __pick_to_retreat))
       (send* _pick_to_retreat __pick_to_retreat)
     (progn
       (if __pick_to_retreat (setq _pick_to_retreat (car __pick_to_retreat)))
       _pick_to_retreat)))
  (:retreat_to_place
   (&rest __retreat_to_place)
   (if (keywordp (car __retreat_to_place))
       (send* _retreat_to_place __retreat_to_place)
     (progn
       (if __retreat_to_place (setq _retreat_to_place (car __retreat_to_place)))
       _retreat_to_place)))
  (:trajectory_delays
   (&optional __trajectory_delays)
   (if __trajectory_delays (setq _trajectory_delays __trajectory_delays)) _trajectory_delays)
  (:execution_duration
   (&optional __execution_duration)
   (if __execution_duration (setq _execution_duration __execution_duration)) _execution_duration)
  (:pick_deadline
   (&optional __pick_deadline)
   (if __pick_deadline (setq _pick_deadline __pick_deadline)) _pick_deadline)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; moveit_msgs/RobotTrajectory _cur_to_approach
    (send _cur_to_approach :serialization-length)
    ;; moveit_msgs/RobotTrajectory _approach_to_pick
    (send _approach_to_pick :serialization-length)
    ;; moveit_msgs/RobotTrajectory _pick_to_retreat
    (send _pick_to_retreat :serialization-length)
    ;; moveit_msgs/RobotTrajectory _retreat_to_place
    (send _retreat_to_place :serialization-length)
    ;; duration[] _trajectory_delays
    (* 8    (length _trajectory_delays)) 4
    ;; duration[] _execution_duration
    (* 8    (length _execution_duration)) 4
    ;; time _pick_deadline
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; moveit_msgs/RobotTrajectory _cur_to_approach
       (send _cur_to_approach :serialize s)
     ;; moveit_msgs/RobotTrajectory _approach_to_pick
       (send _approach_to_pick :serialize s)
     ;; moveit_msgs/RobotTrajectory _pick_to_retreat
       (send _pick_to_retreat :serialize s)
     ;; moveit_msgs/RobotTrajectory _retreat_to_place
       (send _retreat_to_place :serialize s)
     ;; duration[] _trajectory_delays
     (write-long (length _trajectory_delays) s)
     (dotimes (i (length _trajectory_delays))
       (write-long (send (elt _trajectory_delays i) :sec) s) (write-long (send (elt _trajectory_delays i) :nsec) s)
       )
     ;; duration[] _execution_duration
     (write-long (length _execution_duration) s)
     (dotimes (i (length _execution_duration))
       (write-long (send (elt _execution_duration i) :sec) s) (write-long (send (elt _execution_duration i) :nsec) s)
       )
     ;; time _pick_deadline
       (write-long (send _pick_deadline :sec) s) (write-long (send _pick_deadline :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; moveit_msgs/RobotTrajectory _cur_to_approach
     (send _cur_to_approach :deserialize buf ptr-) (incf ptr- (send _cur_to_approach :serialization-length))
   ;; moveit_msgs/RobotTrajectory _approach_to_pick
     (send _approach_to_pick :deserialize buf ptr-) (incf ptr- (send _approach_to_pick :serialization-length))
   ;; moveit_msgs/RobotTrajectory _pick_to_retreat
     (send _pick_to_retreat :deserialize buf ptr-) (incf ptr- (send _pick_to_retreat :serialization-length))
   ;; moveit_msgs/RobotTrajectory _retreat_to_place
     (send _retreat_to_place :deserialize buf ptr-) (incf ptr- (send _retreat_to_place :serialization-length))
   ;; duration[] _trajectory_delays
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _trajectory_delays (let (r) (dotimes (i n) (push (instance ros::time :init) r)) r))
     (dolist (elem- _trajectory_delays)
     (send elem- :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send elem- :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; duration[] _execution_duration
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _execution_duration (let (r) (dotimes (i n) (push (instance ros::time :init) r)) r))
     (dolist (elem- _execution_duration)
     (send elem- :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send elem- :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; time _pick_deadline
     (send _pick_deadline :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _pick_deadline :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get hrwros_msgs::RobotTrajectories :md5sum-) "bb6c13c9e47247b8435a83c302eeca2c")
(setf (get hrwros_msgs::RobotTrajectories :datatype-) "hrwros_msgs/RobotTrajectories")
(setf (get hrwros_msgs::RobotTrajectories :definition-)
      "std_msgs/Header header
moveit_msgs/RobotTrajectory cur_to_approach       # Array of trajectories to be executed by the robot from current pose to approach pose
moveit_msgs/RobotTrajectory approach_to_pick  # Array of trajectories to be executed by the robot from approach pose to pick pose
moveit_msgs/RobotTrajectory pick_to_retreat   # Array of trajectories to be executed by the robot from pick pose to retreat pose
moveit_msgs/RobotTrajectory retreat_to_place  # Array of trajectories to be executed by the robot from retreat pose to place pose
duration[] trajectory_delays                  # Time delays before each trajectory.  Use 0 for no delay
duration[] execution_duration                 # Execution duration for each state of robot trajectories
time pick_deadline                            # The deadline to reach pick pose

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
MSG: moveit_msgs/RobotTrajectory
trajectory_msgs/JointTrajectory joint_trajectory
trajectory_msgs/MultiDOFJointTrajectory multi_dof_joint_trajectory

================================================================================
MSG: trajectory_msgs/JointTrajectory
Header header
string[] joint_names
JointTrajectoryPoint[] points
================================================================================
MSG: trajectory_msgs/JointTrajectoryPoint
# Each trajectory point specifies either positions[, velocities[, accelerations]]
# or positions[, effort] for the trajectory to be executed.
# All specified values are in the same order as the joint names in JointTrajectory.msg

float64[] positions
float64[] velocities
float64[] accelerations
float64[] effort
duration time_from_start

================================================================================
MSG: trajectory_msgs/MultiDOFJointTrajectory
# The header is used to specify the coordinate frame and the reference time for the trajectory durations
Header header

# A representation of a multi-dof joint trajectory (each point is a transformation)
# Each point along the trajectory will include an array of positions/velocities/accelerations
# that has the same length as the array of joint names, and has the same order of joints as 
# the joint names array.

string[] joint_names
MultiDOFJointTrajectoryPoint[] points

================================================================================
MSG: trajectory_msgs/MultiDOFJointTrajectoryPoint
# Each multi-dof joint can specify a transform (up to 6 DOF)
geometry_msgs/Transform[] transforms

# There can be a velocity specified for the origin of the joint 
geometry_msgs/Twist[] velocities

# There can be an acceleration specified for the origin of the joint 
geometry_msgs/Twist[] accelerations

duration time_from_start

================================================================================
MSG: geometry_msgs/Transform
# This represents the transform between two coordinate frames in free space.

Vector3 translation
Quaternion rotation

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

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

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

")



(provide :hrwros_msgs/RobotTrajectories "bb6c13c9e47247b8435a83c302eeca2c")


