;; Auto-generated. Do not edit!


(when (boundp 'hrwros_msgs::SensorInformation)
  (if (not (find-package "HRWROS_MSGS"))
    (make-package "HRWROS_MSGS"))
  (shadow 'SensorInformation (find-package "HRWROS_MSGS")))
(unless (find-package "HRWROS_MSGS::SENSORINFORMATION")
  (make-package "HRWROS_MSGS::SENSORINFORMATION"))

(in-package "ROS")
;;//! \htmlinclude SensorInformation.msg.html
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass hrwros_msgs::SensorInformation
  :super ros::object
  :slots (_sensor_data _maker_name _part_number ))

(defmethod hrwros_msgs::SensorInformation
  (:init
   (&key
    ((:sensor_data __sensor_data) (instance sensor_msgs::Range :init))
    ((:maker_name __maker_name) "")
    ((:part_number __part_number) 0)
    )
   (send-super :init)
   (setq _sensor_data __sensor_data)
   (setq _maker_name (string __maker_name))
   (setq _part_number (round __part_number))
   self)
  (:sensor_data
   (&rest __sensor_data)
   (if (keywordp (car __sensor_data))
       (send* _sensor_data __sensor_data)
     (progn
       (if __sensor_data (setq _sensor_data (car __sensor_data)))
       _sensor_data)))
  (:maker_name
   (&optional __maker_name)
   (if __maker_name (setq _maker_name __maker_name)) _maker_name)
  (:part_number
   (&optional __part_number)
   (if __part_number (setq _part_number __part_number)) _part_number)
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/Range _sensor_data
    (send _sensor_data :serialization-length)
    ;; string _maker_name
    4 (length _maker_name)
    ;; uint32 _part_number
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/Range _sensor_data
       (send _sensor_data :serialize s)
     ;; string _maker_name
       (write-long (length _maker_name) s) (princ _maker_name s)
     ;; uint32 _part_number
       (write-long _part_number s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/Range _sensor_data
     (send _sensor_data :deserialize buf ptr-) (incf ptr- (send _sensor_data :serialization-length))
   ;; string _maker_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _maker_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint32 _part_number
     (setq _part_number (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get hrwros_msgs::SensorInformation :md5sum-) "d963bb325e7c9c7478db23eeb529f1eb")
(setf (get hrwros_msgs::SensorInformation :datatype-) "hrwros_msgs/SensorInformation")
(setf (get hrwros_msgs::SensorInformation :definition-)
      "sensor_msgs/Range sensor_data
string maker_name
uint32 part_number

================================================================================
MSG: sensor_msgs/Range
# Single range reading from an active ranger that emits energy and reports
# one range reading that is valid along an arc at the distance measured. 
# This message is  not appropriate for laser scanners. See the LaserScan
# message if you are working with a laser scanner.

# This message also can represent a fixed-distance (binary) ranger.  This
# sensor will have min_range===max_range===distance of detection.
# These sensors follow REP 117 and will output -Inf if the object is detected
# and +Inf if the object is outside of the detection range.

Header header           # timestamp in the header is the time the ranger
                        # returned the distance reading

# Radiation type enums
# If you want a value added to this list, send an email to the ros-users list
uint8 ULTRASOUND=0
uint8 INFRARED=1

uint8 radiation_type    # the type of radiation used by the sensor
                        # (sound, IR, etc) [enum]

float32 field_of_view   # the size of the arc that the distance reading is
                        # valid for [rad]
                        # the object causing the range reading may have
                        # been anywhere within -field_of_view/2 and
                        # field_of_view/2 at the measured range. 
                        # 0 angle corresponds to the x-axis of the sensor.

float32 min_range       # minimum range value [m]
float32 max_range       # maximum range value [m]
                        # Fixed distance rangers require min_range==max_range

float32 range           # range data [m]
                        # (Note: values < range_min or > range_max
                        # should be discarded)
                        # Fixed distance rangers only output -Inf or +Inf.
                        # -Inf represents a detection within fixed distance.
                        # (Detection too close to the sensor to quantify)
                        # +Inf represents no detection within the fixed distance.
                        # (Object out of range)
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



(provide :hrwros_msgs/SensorInformation "d963bb325e7c9c7478db23eeb529f1eb")


