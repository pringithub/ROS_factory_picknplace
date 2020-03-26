
(cl:in-package :asdf)

(defsystem "hrwros_gazebo-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :hrwros_gazebo-msg
)
  :components ((:file "_package")
    (:file "AGVControl" :depends-on ("_package_AGVControl"))
    (:file "_package_AGVControl" :depends-on ("_package"))
    (:file "ConveyorBeltControl" :depends-on ("_package_ConveyorBeltControl"))
    (:file "_package_ConveyorBeltControl" :depends-on ("_package"))
    (:file "GetMaterialLocations" :depends-on ("_package_GetMaterialLocations"))
    (:file "_package_GetMaterialLocations" :depends-on ("_package"))
    (:file "PopulationControl" :depends-on ("_package_PopulationControl"))
    (:file "_package_PopulationControl" :depends-on ("_package"))
    (:file "SubmitTray" :depends-on ("_package_SubmitTray"))
    (:file "_package_SubmitTray" :depends-on ("_package"))
    (:file "VacuumGripperControl" :depends-on ("_package_VacuumGripperControl"))
    (:file "_package_VacuumGripperControl" :depends-on ("_package"))
  ))