;; Auto-generated. Do not edit!


(when (boundp 'hrwros_gazebo::ConveyorBeltState)
  (if (not (find-package "HRWROS_GAZEBO"))
    (make-package "HRWROS_GAZEBO"))
  (shadow 'ConveyorBeltState (find-package "HRWROS_GAZEBO")))
(unless (find-package "HRWROS_GAZEBO::CONVEYORBELTSTATE")
  (make-package "HRWROS_GAZEBO::CONVEYORBELTSTATE"))

(in-package "ROS")
;;//! \htmlinclude ConveyorBeltState.msg.html


(defclass hrwros_gazebo::ConveyorBeltState
  :super ros::object
  :slots (_power ))

(defmethod hrwros_gazebo::ConveyorBeltState
  (:init
   (&key
    ((:power __power) 0.0)
    )
   (send-super :init)
   (setq _power (float __power))
   self)
  (:power
   (&optional __power)
   (if __power (setq _power __power)) _power)
  (:serialization-length
   ()
   (+
    ;; float64 _power
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _power
       (sys::poke _power (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _power
     (setq _power (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get hrwros_gazebo::ConveyorBeltState :md5sum-) "b61bda1d4e0075084b2082bebb59ea34")
(setf (get hrwros_gazebo::ConveyorBeltState :datatype-) "hrwros_gazebo/ConveyorBeltState")
(setf (get hrwros_gazebo::ConveyorBeltState :definition-)
      "# Conveyor belt state message
float64 power    # power of the belt (percentage, in +Y direction of belt frame)

")



(provide :hrwros_gazebo/ConveyorBeltState "b61bda1d4e0075084b2082bebb59ea34")


