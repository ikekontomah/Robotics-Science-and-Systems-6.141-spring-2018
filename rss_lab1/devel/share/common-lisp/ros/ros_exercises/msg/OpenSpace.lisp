; Auto-generated. Do not edit!


(cl:in-package ros_exercises-msg)


;//! \htmlinclude OpenSpace.msg.html

(cl:defclass <OpenSpace> (roslisp-msg-protocol:ros-message)
  ((distance
    :reader distance
    :initarg :distance
    :type cl:float
    :initform 0.0)
   (angle
    :reader angle
    :initarg :angle
    :type cl:float
    :initform 0.0))
)

(cl:defclass OpenSpace (<OpenSpace>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OpenSpace>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OpenSpace)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_exercises-msg:<OpenSpace> is deprecated: use ros_exercises-msg:OpenSpace instead.")))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <OpenSpace>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_exercises-msg:distance-val is deprecated.  Use ros_exercises-msg:distance instead.")
  (distance m))

(cl:ensure-generic-function 'angle-val :lambda-list '(m))
(cl:defmethod angle-val ((m <OpenSpace>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_exercises-msg:angle-val is deprecated.  Use ros_exercises-msg:angle instead.")
  (angle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OpenSpace>) ostream)
  "Serializes a message object of type '<OpenSpace>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OpenSpace>) istream)
  "Deserializes a message object of type '<OpenSpace>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angle) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OpenSpace>)))
  "Returns string type for a message object of type '<OpenSpace>"
  "ros_exercises/OpenSpace")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OpenSpace)))
  "Returns string type for a message object of type 'OpenSpace"
  "ros_exercises/OpenSpace")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OpenSpace>)))
  "Returns md5sum for a message object of type '<OpenSpace>"
  "ec24e737ddaa2f1769f4aa74f864401d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OpenSpace)))
  "Returns md5sum for a message object of type 'OpenSpace"
  "ec24e737ddaa2f1769f4aa74f864401d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OpenSpace>)))
  "Returns full string definition for message of type '<OpenSpace>"
  (cl:format cl:nil "float32 distance~%float32 angle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OpenSpace)))
  "Returns full string definition for message of type 'OpenSpace"
  (cl:format cl:nil "float32 distance~%float32 angle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OpenSpace>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OpenSpace>))
  "Converts a ROS message object to a list"
  (cl:list 'OpenSpace
    (cl:cons ':distance (distance msg))
    (cl:cons ':angle (angle msg))
))
