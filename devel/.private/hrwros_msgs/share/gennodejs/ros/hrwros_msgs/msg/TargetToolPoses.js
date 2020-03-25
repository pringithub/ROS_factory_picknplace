// Auto-generated. Do not edit!

// (in-package hrwros_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class TargetToolPoses {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.pick_approach = null;
      this.pick_pose = null;
      this.pick_retreat = null;
      this.place_pose = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('pick_approach')) {
        this.pick_approach = initObj.pick_approach
      }
      else {
        this.pick_approach = new geometry_msgs.msg.PoseStamped();
      }
      if (initObj.hasOwnProperty('pick_pose')) {
        this.pick_pose = initObj.pick_pose
      }
      else {
        this.pick_pose = new geometry_msgs.msg.PoseStamped();
      }
      if (initObj.hasOwnProperty('pick_retreat')) {
        this.pick_retreat = initObj.pick_retreat
      }
      else {
        this.pick_retreat = new geometry_msgs.msg.PoseStamped();
      }
      if (initObj.hasOwnProperty('place_pose')) {
        this.place_pose = initObj.place_pose
      }
      else {
        this.place_pose = new geometry_msgs.msg.PoseStamped();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TargetToolPoses
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [pick_approach]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.pick_approach, buffer, bufferOffset);
    // Serialize message field [pick_pose]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.pick_pose, buffer, bufferOffset);
    // Serialize message field [pick_retreat]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.pick_retreat, buffer, bufferOffset);
    // Serialize message field [place_pose]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.place_pose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TargetToolPoses
    let len;
    let data = new TargetToolPoses(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [pick_approach]
    data.pick_approach = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [pick_pose]
    data.pick_pose = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [pick_retreat]
    data.pick_retreat = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [place_pose]
    data.place_pose = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.pick_approach);
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.pick_pose);
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.pick_retreat);
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.place_pose);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hrwros_msgs/TargetToolPoses';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '92d21c88158c4209a26e8da56b2c4ba2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    geometry_msgs/PoseStamped pick_approach  # Robot tool pose right before picking
    geometry_msgs/PoseStamped pick_pose      # Robot tool makes contact with the object and closes its gripper
    geometry_msgs/PoseStamped pick_retreat   # Robot tool moves the object away from its resting surface
    geometry_msgs/PoseStamped place_pose     # Robot tool moves object to this location and opens gripper
    
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
    MSG: geometry_msgs/PoseStamped
    # A Pose with reference coordinate frame and timestamp
    Header header
    Pose pose
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TargetToolPoses(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.pick_approach !== undefined) {
      resolved.pick_approach = geometry_msgs.msg.PoseStamped.Resolve(msg.pick_approach)
    }
    else {
      resolved.pick_approach = new geometry_msgs.msg.PoseStamped()
    }

    if (msg.pick_pose !== undefined) {
      resolved.pick_pose = geometry_msgs.msg.PoseStamped.Resolve(msg.pick_pose)
    }
    else {
      resolved.pick_pose = new geometry_msgs.msg.PoseStamped()
    }

    if (msg.pick_retreat !== undefined) {
      resolved.pick_retreat = geometry_msgs.msg.PoseStamped.Resolve(msg.pick_retreat)
    }
    else {
      resolved.pick_retreat = new geometry_msgs.msg.PoseStamped()
    }

    if (msg.place_pose !== undefined) {
      resolved.place_pose = geometry_msgs.msg.PoseStamped.Resolve(msg.place_pose)
    }
    else {
      resolved.place_pose = new geometry_msgs.msg.PoseStamped()
    }

    return resolved;
    }
};

module.exports = TargetToolPoses;
