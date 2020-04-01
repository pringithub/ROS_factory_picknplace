execute_process(COMMAND "/home/lxu9/hrwros_ws/build/behavior_final_project/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/lxu9/hrwros_ws/build/behavior_final_project/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
