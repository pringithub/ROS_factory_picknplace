;; Auto-generated. Do not edit!


(when (boundp 'hrwros_msgs::ConvertMetresToFeet)
  (if (not (find-package "HRWROS_MSGS"))
    (make-package "HRWROS_MSGS"))
  (shadow 'ConvertMetresToFeet (find-package "HRWROS_MSGS")))
(unless (find-package "HRWROS_MSGS::CONVERTMETRESTOFEET")
  (make-package "HRWROS_MSGS::CONVERTMETRESTOFEET"))
(unless (find-package "HRWROS_MSGS::CONVERTMETRESTOFEETREQUEST")
  (make-package "HRWROS_MSGS::CONVERTMETRESTOFEETREQUEST"))
(unless (find-package "HRWROS_MSGS::CONVERTMETRESTOFEETRESPONSE")
  (make-package "HRWROS_MSGS::CONVERTMETRESTOFEETRESPONSE"))

(in-package "ROS")





(defclass hrwros_msgs::ConvertMetresToFeetRequest
  :super ros::object
  :slots (_distance_metres ))

(defmethod hrwros_msgs::ConvertMetresToFeetRequest
  (:init
   (&key
    ((:distance_metres __distance_metres) 0.0)
    )
   (send-super :init)
   (setq _distance_metres (float __distance_metres))
   self)
  (:distance_metres
   (&optional __distance_metres)
   (if __distance_metres (setq _distance_metres __distance_metres)) _distance_metres)
  (:serialization-length
   ()
   (+
    ;; float64 _distance_metres
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _distance_metres
       (sys::poke _distance_metres (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _distance_metres
     (setq _distance_metres (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass hrwros_msgs::ConvertMetresToFeetResponse
  :super ros::object
  :slots (_distance_feet _success ))

(defmethod hrwros_msgs::ConvertMetresToFeetResponse
  (:init
   (&key
    ((:distance_feet __distance_feet) 0.0)
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _distance_feet (float __distance_feet))
   (setq _success __success)
   self)
  (:distance_feet
   (&optional __distance_feet)
   (if __distance_feet (setq _distance_feet __distance_feet)) _distance_feet)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; float64 _distance_feet
    8
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _distance_feet
       (sys::poke _distance_feet (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _distance_feet
     (setq _distance_feet (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass hrwros_msgs::ConvertMetresToFeet
  :super ros::object
  :slots ())

(setf (get hrwros_msgs::ConvertMetresToFeet :md5sum-) "8ee6357200ff4b8dfb11e637c7e317c0")
(setf (get hrwros_msgs::ConvertMetresToFeet :datatype-) "hrwros_msgs/ConvertMetresToFeet")
(setf (get hrwros_msgs::ConvertMetresToFeet :request) hrwros_msgs::ConvertMetresToFeetRequest)
(setf (get hrwros_msgs::ConvertMetresToFeet :response) hrwros_msgs::ConvertMetresToFeetResponse)

(defmethod hrwros_msgs::ConvertMetresToFeetRequest
  (:response () (instance hrwros_msgs::ConvertMetresToFeetResponse :init)))

(setf (get hrwros_msgs::ConvertMetresToFeetRequest :md5sum-) "8ee6357200ff4b8dfb11e637c7e317c0")
(setf (get hrwros_msgs::ConvertMetresToFeetRequest :datatype-) "hrwros_msgs/ConvertMetresToFeetRequest")
(setf (get hrwros_msgs::ConvertMetresToFeetRequest :definition-)
      "float64 distance_metres
---
float64 distance_feet
bool success

")

(setf (get hrwros_msgs::ConvertMetresToFeetResponse :md5sum-) "8ee6357200ff4b8dfb11e637c7e317c0")
(setf (get hrwros_msgs::ConvertMetresToFeetResponse :datatype-) "hrwros_msgs/ConvertMetresToFeetResponse")
(setf (get hrwros_msgs::ConvertMetresToFeetResponse :definition-)
      "float64 distance_metres
---
float64 distance_feet
bool success

")



(provide :hrwros_msgs/ConvertMetresToFeet "8ee6357200ff4b8dfb11e637c7e317c0")


