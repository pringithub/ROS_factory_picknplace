;; Auto-generated. Do not edit!


(when (boundp 'hrwros_gazebo::Proximity)
  (if (not (find-package "HRWROS_GAZEBO"))
    (make-package "HRWROS_GAZEBO"))
  (shadow 'Proximity (find-package "HRWROS_GAZEBO")))
(unless (find-package "HRWROS_GAZEBO::PROXIMITY")
  (make-package "HRWROS_GAZEBO::PROXIMITY"))

(in-package "ROS")
;;//! \htmlinclude Proximity.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass hrwros_gazebo::Proximity
  :super ros::object
  :slots (_header _object_detected _min_range _max_range ))

(defmethod hrwros_gazebo::Proximity
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:object_detected __object_detected) nil)
    ((:min_range __min_range) 0.0)
    ((:max_range __max_range) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _object_detected __object_detected)
   (setq _min_range (float __min_range))
   (setq _max_range (float __max_range))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:object_detected
   (&optional __object_detected)
   (if __object_detected (setq _object_detected __object_detected)) _object_detected)
  (:min_range
   (&optional __min_range)
   (if __min_range (setq _min_range __min_range)) _min_range)
  (:max_range
   (&optional __max_range)
   (if __max_range (setq _max_range __max_range)) _max_range)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _object_detected
    1
    ;; float32 _min_range
    4
    ;; float32 _max_range
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _object_detected
       (if _object_detected (write-byte -1 s) (write-byte 0 s))
     ;; float32 _min_range
       (sys::poke _min_range (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _max_range
       (sys::poke _max_range (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _object_detected
     (setq _object_detected (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _min_range
     (setq _min_range (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _max_range
     (setq _max_range (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get hrwros_gazebo::Proximity :md5sum-) "7ba3dd0f5ec6df7b148eb145074dcc63")
(setf (get hrwros_gazebo::Proximity :datatype-) "hrwros_gazebo/Proximity")
(setf (get hrwros_gazebo::Proximity :definition-)
      "# Single reading from a binary proximity sensor that detects the presence of
# objects within its sensing range.
Header header           # timestamp in the header is the time the sensor
                        # returned the sensor reading
bool object_detected    # is there something in the proximity of the sensor?
float32 min_range       # minimum range value [m]
float32 max_range       # maximum range value [m]

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

")



(provide :hrwros_gazebo/Proximity "7ba3dd0f5ec6df7b148eb145074dcc63")


