// Auto-generated. Do not edit!

// (in-package hrwros_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let moveit_msgs = _finder('moveit_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class RobotTrajectories {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.cur_to_approach = null;
      this.approach_to_pick = null;
      this.pick_to_retreat = null;
      this.retreat_to_place = null;
      this.trajectory_delays = null;
      this.execution_duration = null;
      this.pick_deadline = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('cur_to_approach')) {
        this.cur_to_approach = initObj.cur_to_approach
      }
      else {
        this.cur_to_approach = new moveit_msgs.msg.RobotTrajectory();
      }
      if (initObj.hasOwnProperty('approach_to_pick')) {
        this.approach_to_pick = initObj.approach_to_pick
      }
      else {
        this.approach_to_pick = new moveit_msgs.msg.RobotTrajectory();
      }
      if (initObj.hasOwnProperty('pick_to_retreat')) {
        this.pick_to_retreat = initObj.pick_to_retreat
      }
      else {
        this.pick_to_retreat = new moveit_msgs.msg.RobotTrajectory();
      }
      if (initObj.hasOwnProperty('retreat_to_place')) {
        this.retreat_to_place = initObj.retreat_to_place
      }
      else {
        this.retreat_to_place = new moveit_msgs.msg.RobotTrajectory();
      }
      if (initObj.hasOwnProperty('trajectory_delays')) {
        this.trajectory_delays = initObj.trajectory_delays
      }
      else {
        this.trajectory_delays = [];
      }
      if (initObj.hasOwnProperty('execution_duration')) {
        this.execution_duration = initObj.execution_duration
      }
      else {
        this.execution_duration = [];
      }
      if (initObj.hasOwnProperty('pick_deadline')) {
        this.pick_deadline = initObj.pick_deadline
      }
      else {
        this.pick_deadline = {secs: 0, nsecs: 0};
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RobotTrajectories
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [cur_to_approach]
    bufferOffset = moveit_msgs.msg.RobotTrajectory.serialize(obj.cur_to_approach, buffer, bufferOffset);
    // Serialize message field [approach_to_pick]
    bufferOffset = moveit_msgs.msg.RobotTrajectory.serialize(obj.approach_to_pick, buffer, bufferOffset);
    // Serialize message field [pick_to_retreat]
    bufferOffset = moveit_msgs.msg.RobotTrajectory.serialize(obj.pick_to_retreat, buffer, bufferOffset);
    // Serialize message field [retreat_to_place]
    bufferOffset = moveit_msgs.msg.RobotTrajectory.serialize(obj.retreat_to_place, buffer, bufferOffset);
    // Serialize message field [trajectory_delays]
    bufferOffset = _arraySerializer.duration(obj.trajectory_delays, buffer, bufferOffset, null);
    // Serialize message field [execution_duration]
    bufferOffset = _arraySerializer.duration(obj.execution_duration, buffer, bufferOffset, null);
    // Serialize message field [pick_deadline]
    bufferOffset = _serializer.time(obj.pick_deadline, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotTrajectories
    let len;
    let data = new RobotTrajectories(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [cur_to_approach]
    data.cur_to_approach = moveit_msgs.msg.RobotTrajectory.deserialize(buffer, bufferOffset);
    // Deserialize message field [approach_to_pick]
    data.approach_to_pick = moveit_msgs.msg.RobotTrajectory.deserialize(buffer, bufferOffset);
    // Deserialize message field [pick_to_retreat]
    data.pick_to_retreat = moveit_msgs.msg.RobotTrajectory.deserialize(buffer, bufferOffset);
    // Deserialize message field [retreat_to_place]
    data.retreat_to_place = moveit_msgs.msg.RobotTrajectory.deserialize(buffer, bufferOffset);
    // Deserialize message field [trajectory_delays]
    data.trajectory_delays = _arrayDeserializer.duration(buffer, bufferOffset, null)
    // Deserialize message field [execution_duration]
    data.execution_duration = _arrayDeserializer.duration(buffer, bufferOffset, null)
    // Deserialize message field [pick_deadline]
    data.pick_deadline = _deserializer.time(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += moveit_msgs.msg.RobotTrajectory.getMessageSize(object.cur_to_approach);
    length += moveit_msgs.msg.RobotTrajectory.getMessageSize(object.approach_to_pick);
    length += moveit_msgs.msg.RobotTrajectory.getMessageSize(object.pick_to_retreat);
    length += moveit_msgs.msg.RobotTrajectory.getMessageSize(object.retreat_to_place);
    length += 8 * object.trajectory_delays.length;
    length += 8 * object.execution_duration.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hrwros_msgs/RobotTrajectories';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bb6c13c9e47247b8435a83c302eeca2c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    moveit_msgs/RobotTrajectory cur_to_approach       # Array of trajectories to be executed by the robot from current pose to approach pose
    moveit_msgs/RobotTrajectory approach_to_pick  # Array of trajectories to be executed by the robot from approach pose to pick pose
    moveit_msgs/RobotTrajectory pick_to_retreat   # Array of trajectories to be executed by the robot from pick pose to retreat pose
    moveit_msgs/RobotTrajectory retreat_to_place  # Array of trajectories to be executed by the robot from retreat pose to place pose
    duration[] trajectory_delays                  # Time delays before each trajectory.  Use 0 for no delay
    duration[] execution_duration                 # Execution duration for each state of robot trajectories
    time pick_deadline                            # The deadline to reach pick pose
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: moveit_msgs/RobotTrajectory
    trajectory_msgs/JointTrajectory joint_trajectory
    trajectory_msgs/MultiDOFJointTrajectory multi_dof_joint_trajectory
    
    ================================================================================
    MSG: trajectory_msgs/JointTrajectory
    Header header
    string[] joint_names
    JointTrajectoryPoint[] points
    ================================================================================
    MSG: trajectory_msgs/JointTrajectoryPoint
    # Each trajectory point specifies either positions[, velocities[, accelerations]]
    # or positions[, effort] for the trajectory to be executed.
    # All specified values are in the same order as the joint names in JointTrajectory.msg
    
    float64[] positions
    float64[] velocities
    float64[] accelerations
    float64[] effort
    duration time_from_start
    
    ================================================================================
    MSG: trajectory_msgs/MultiDOFJointTrajectory
    # The header is used to specify the coordinate frame and the reference time for the trajectory durations
    Header header
    
    # A representation of a multi-dof joint trajectory (each point is a transformation)
    # Each point along the trajectory will include an array of positions/velocities/accelerations
    # that has the same length as the array of joint names, and has the same order of joints as 
    # the joint names array.
    
    string[] joint_names
    MultiDOFJointTrajectoryPoint[] points
    
    ================================================================================
    MSG: trajectory_msgs/MultiDOFJointTrajectoryPoint
    # Each multi-dof joint can specify a transform (up to 6 DOF)
    geometry_msgs/Transform[] transforms
    
    # There can be a velocity specified for the origin of the joint 
    geometry_msgs/Twist[] velocities
    
    # There can be an acceleration specified for the origin of the joint 
    geometry_msgs/Twist[] accelerations
    
    duration time_from_start
    
    ================================================================================
    MSG: geometry_msgs/Transform
    # This represents the transform between two coordinate frames in free space.
    
    Vector3 translation
    Quaternion rotation
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    ================================================================================
    MSG: geometry_msgs/Twist
    # This expresses velocity in free space broken into its linear and angular parts.
    Vector3  linear
    Vector3  angular
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RobotTrajectories(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.cur_to_approach !== undefined) {
      resolved.cur_to_approach = moveit_msgs.msg.RobotTrajectory.Resolve(msg.cur_to_approach)
    }
    else {
      resolved.cur_to_approach = new moveit_msgs.msg.RobotTrajectory()
    }

    if (msg.approach_to_pick !== undefined) {
      resolved.approach_to_pick = moveit_msgs.msg.RobotTrajectory.Resolve(msg.approach_to_pick)
    }
    else {
      resolved.approach_to_pick = new moveit_msgs.msg.RobotTrajectory()
    }

    if (msg.pick_to_retreat !== undefined) {
      resolved.pick_to_retreat = moveit_msgs.msg.RobotTrajectory.Resolve(msg.pick_to_retreat)
    }
    else {
      resolved.pick_to_retreat = new moveit_msgs.msg.RobotTrajectory()
    }

    if (msg.retreat_to_place !== undefined) {
      resolved.retreat_to_place = moveit_msgs.msg.RobotTrajectory.Resolve(msg.retreat_to_place)
    }
    else {
      resolved.retreat_to_place = new moveit_msgs.msg.RobotTrajectory()
    }

    if (msg.trajectory_delays !== undefined) {
      resolved.trajectory_delays = msg.trajectory_delays;
    }
    else {
      resolved.trajectory_delays = []
    }

    if (msg.execution_duration !== undefined) {
      resolved.execution_duration = msg.execution_duration;
    }
    else {
      resolved.execution_duration = []
    }

    if (msg.pick_deadline !== undefined) {
      resolved.pick_deadline = msg.pick_deadline;
    }
    else {
      resolved.pick_deadline = {secs: 0, nsecs: 0}
    }

    return resolved;
    }
};

module.exports = RobotTrajectories;
