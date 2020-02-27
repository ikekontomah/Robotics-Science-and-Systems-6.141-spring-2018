
(cl:in-package :asdf)

(defsystem "ros_exercises-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "OpenSpace" :depends-on ("_package_OpenSpace"))
    (:file "_package_OpenSpace" :depends-on ("_package"))
  ))