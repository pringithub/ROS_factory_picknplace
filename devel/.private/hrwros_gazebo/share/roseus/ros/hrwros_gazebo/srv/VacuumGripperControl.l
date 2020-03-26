;; Auto-generated. Do not edit!


(when (boundp 'hrwros_gazebo::VacuumGripperControl)
  (if (not (find-package "HRWROS_GAZEBO"))
    (make-package "HRWROS_GAZEBO"))
  (shadow 'VacuumGripperControl (find-package "HRWROS_GAZEBO")))
(unless (find-package "HRWROS_GAZEBO::VACUUMGRIPPERCONTROL")
  (make-package "HRWROS_GAZEBO::VACUUMGRIPPERCONTROL"))
(unless (find-package "HRWROS_GAZEBO::VACUUMGRIPPERCONTROLREQUEST")
  (make-package "HRWROS_GAZEBO::VACUUMGRIPPERCONTROLREQUEST"))
(unless (find-package "HRWROS_GAZEBO::VACUUMGRIPPERCONTROLRESPONSE")
  (make-package "HRWROS_GAZEBO::VACUUMGRIPPERCONTROLRESPONSE"))

(in-package "ROS")





(defclass hrwros_gazebo::VacuumGripperControlRequest
  :super ros::object
  :slots (_enable ))

(defmethod hrwros_gazebo::VacuumGripperControlRequest
  (:init
   (&key
    ((:enable __enable) nil)
    )
   (send-super :init)
   (setq _enable __enable)
   self)
  (:enable
   (&optional __enable)
   (if __enable (setq _enable __enable)) _enable)
  (:serialization-length
   ()
   (+
    ;; bool _enable
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _enable
       (if _enable (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _enable
     (setq _enable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass hrwros_gazebo::VacuumGripperControlResponse
  :super ros::object
  :slots (_success ))

(defmethod hrwros_gazebo::VacuumGripperControlResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass hrwros_gazebo::VacuumGripperControl
  :super ros::object
  :slots ())

(setf (get hrwros_gazebo::VacuumGripperControl :md5sum-) "6a0b406242562fc416b2c9c8a3efb051")
(setf (get hrwros_gazebo::VacuumGripperControl :datatype-) "hrwros_gazebo/VacuumGripperControl")
(setf (get hrwros_gazebo::VacuumGripperControl :request) hrwros_gazebo::VacuumGripperControlRequest)
(setf (get hrwros_gazebo::VacuumGripperControl :response) hrwros_gazebo::VacuumGripperControlResponse)

(defmethod hrwros_gazebo::VacuumGripperControlRequest
  (:response () (instance hrwros_gazebo::VacuumGripperControlResponse :init)))

(setf (get hrwros_gazebo::VacuumGripperControlRequest :md5sum-) "6a0b406242562fc416b2c9c8a3efb051")
(setf (get hrwros_gazebo::VacuumGripperControlRequest :datatype-) "hrwros_gazebo/VacuumGripperControlRequest")
(setf (get hrwros_gazebo::VacuumGripperControlRequest :definition-)
      "


bool enable

---
bool success

")

(setf (get hrwros_gazebo::VacuumGripperControlResponse :md5sum-) "6a0b406242562fc416b2c9c8a3efb051")
(setf (get hrwros_gazebo::VacuumGripperControlResponse :datatype-) "hrwros_gazebo/VacuumGripperControlResponse")
(setf (get hrwros_gazebo::VacuumGripperControlResponse :definition-)
      "


bool enable

---
bool success

")



(provide :hrwros_gazebo/VacuumGripperControl "6a0b406242562fc416b2c9c8a3efb051")


