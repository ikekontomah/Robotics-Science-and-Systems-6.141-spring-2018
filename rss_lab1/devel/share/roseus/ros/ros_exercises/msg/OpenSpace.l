;; Auto-generated. Do not edit!


(when (boundp 'ros_exercises::OpenSpace)
  (if (not (find-package "ROS_EXERCISES"))
    (make-package "ROS_EXERCISES"))
  (shadow 'OpenSpace (find-package "ROS_EXERCISES")))
(unless (find-package "ROS_EXERCISES::OPENSPACE")
  (make-package "ROS_EXERCISES::OPENSPACE"))

(in-package "ROS")
;;//! \htmlinclude OpenSpace.msg.html


(defclass ros_exercises::OpenSpace
  :super ros::object
  :slots (_distance _angle ))

(defmethod ros_exercises::OpenSpace
  (:init
   (&key
    ((:distance __distance) 0.0)
    ((:angle __angle) 0.0)
    )
   (send-super :init)
   (setq _distance (float __distance))
   (setq _angle (float __angle))
   self)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:angle
   (&optional __angle)
   (if __angle (setq _angle __angle)) _angle)
  (:serialization-length
   ()
   (+
    ;; float32 _distance
    4
    ;; float32 _angle
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _distance
       (sys::poke _distance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _angle
       (sys::poke _angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _distance
     (setq _distance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _angle
     (setq _angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ros_exercises::OpenSpace :md5sum-) "ec24e737ddaa2f1769f4aa74f864401d")
(setf (get ros_exercises::OpenSpace :datatype-) "ros_exercises/OpenSpace")
(setf (get ros_exercises::OpenSpace :definition-)
      "float32 distance
float32 angle

")



(provide :ros_exercises/OpenSpace "ec24e737ddaa2f1769f4aa74f864401d")


