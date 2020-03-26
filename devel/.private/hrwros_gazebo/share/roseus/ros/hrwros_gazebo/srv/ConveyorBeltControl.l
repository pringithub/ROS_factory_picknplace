;; Auto-generated. Do not edit!


(when (boundp 'hrwros_gazebo::ConveyorBeltControl)
  (if (not (find-package "HRWROS_GAZEBO"))
    (make-package "HRWROS_GAZEBO"))
  (shadow 'ConveyorBeltControl (find-package "HRWROS_GAZEBO")))
(unless (find-package "HRWROS_GAZEBO::CONVEYORBELTCONTROL")
  (make-package "HRWROS_GAZEBO::CONVEYORBELTCONTROL"))
(unless (find-package "HRWROS_GAZEBO::CONVEYORBELTCONTROLREQUEST")
  (make-package "HRWROS_GAZEBO::CONVEYORBELTCONTROLREQUEST"))
(unless (find-package "HRWROS_GAZEBO::CONVEYORBELTCONTROLRESPONSE")
  (make-package "HRWROS_GAZEBO::CONVEYORBELTCONTROLRESPONSE"))

(in-package "ROS")





(defclass hrwros_gazebo::ConveyorBeltControlRequest
  :super ros::object
  :slots (_state ))

(defmethod hrwros_gazebo::ConveyorBeltControlRequest
  (:init
   (&key
    ((:state __state) (instance hrwros_gazebo::ConveyorBeltState :init))
    )
   (send-super :init)
   (setq _state __state)
   self)
  (:state
   (&rest __state)
   (if (keywordp (car __state))
       (send* _state __state)
     (progn
       (if __state (setq _state (car __state)))
       _state)))
  (:serialization-length
   ()
   (+
    ;; hrwros_gazebo/ConveyorBeltState _state
    (send _state :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; hrwros_gazebo/ConveyorBeltState _state
       (send _state :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; hrwros_gazebo/ConveyorBeltState _state
     (send _state :deserialize buf ptr-) (incf ptr- (send _state :serialization-length))
   ;;
   self)
  )

(defclass hrwros_gazebo::ConveyorBeltControlResponse
  :super ros::object
  :slots (_success ))

(defmethod hrwros_gazebo::ConveyorBeltControlResponse
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

(defclass hrwros_gazebo::ConveyorBeltControl
  :super ros::object
  :slots ())

(setf (get hrwros_gazebo::ConveyorBeltControl :md5sum-) "9530768849645096e15ae7f875771ab2")
(setf (get hrwros_gazebo::ConveyorBeltControl :datatype-) "hrwros_gazebo/ConveyorBeltControl")
(setf (get hrwros_gazebo::ConveyorBeltControl :request) hrwros_gazebo::ConveyorBeltControlRequest)
(setf (get hrwros_gazebo::ConveyorBeltControl :response) hrwros_gazebo::ConveyorBeltControlResponse)

(defmethod hrwros_gazebo::ConveyorBeltControlRequest
  (:response () (instance hrwros_gazebo::ConveyorBeltControlResponse :init)))

(setf (get hrwros_gazebo::ConveyorBeltControlRequest :md5sum-) "9530768849645096e15ae7f875771ab2")
(setf (get hrwros_gazebo::ConveyorBeltControlRequest :datatype-) "hrwros_gazebo/ConveyorBeltControlRequest")
(setf (get hrwros_gazebo::ConveyorBeltControlRequest :definition-)
      "


ConveyorBeltState state


================================================================================
MSG: hrwros_gazebo/ConveyorBeltState
# Conveyor belt state message
float64 power    # power of the belt (percentage, in +Y direction of belt frame)
---
bool success

")

(setf (get hrwros_gazebo::ConveyorBeltControlResponse :md5sum-) "9530768849645096e15ae7f875771ab2")
(setf (get hrwros_gazebo::ConveyorBeltControlResponse :datatype-) "hrwros_gazebo/ConveyorBeltControlResponse")
(setf (get hrwros_gazebo::ConveyorBeltControlResponse :definition-)
      "


ConveyorBeltState state


================================================================================
MSG: hrwros_gazebo/ConveyorBeltState
# Conveyor belt state message
float64 power    # power of the belt (percentage, in +Y direction of belt frame)
---
bool success

")



(provide :hrwros_gazebo/ConveyorBeltControl "9530768849645096e15ae7f875771ab2")


