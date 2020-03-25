;; Auto-generated. Do not edit!


(when (boundp 'hrwros_msgs::BoxHeightInformation)
  (if (not (find-package "HRWROS_MSGS"))
    (make-package "HRWROS_MSGS"))
  (shadow 'BoxHeightInformation (find-package "HRWROS_MSGS")))
(unless (find-package "HRWROS_MSGS::BOXHEIGHTINFORMATION")
  (make-package "HRWROS_MSGS::BOXHEIGHTINFORMATION"))

(in-package "ROS")
;;//! \htmlinclude BoxHeightInformation.msg.html


(defclass hrwros_msgs::BoxHeightInformation
  :super ros::object
  :slots (_box_height ))

(defmethod hrwros_msgs::BoxHeightInformation
  (:init
   (&key
    ((:box_height __box_height) 0.0)
    )
   (send-super :init)
   (setq _box_height (float __box_height))
   self)
  (:box_height
   (&optional __box_height)
   (if __box_height (setq _box_height __box_height)) _box_height)
  (:serialization-length
   ()
   (+
    ;; float32 _box_height
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _box_height
       (sys::poke _box_height (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _box_height
     (setq _box_height (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get hrwros_msgs::BoxHeightInformation :md5sum-) "2b427ae616da4facf1fbfe9829db6b50")
(setf (get hrwros_msgs::BoxHeightInformation :datatype-) "hrwros_msgs/BoxHeightInformation")
(setf (get hrwros_msgs::BoxHeightInformation :definition-)
      "float32 box_height


")



(provide :hrwros_msgs/BoxHeightInformation "2b427ae616da4facf1fbfe9829db6b50")


