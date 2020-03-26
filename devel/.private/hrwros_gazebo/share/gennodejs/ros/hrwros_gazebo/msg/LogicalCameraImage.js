// Auto-generated. Do not edit!

// (in-package hrwros_gazebo.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Model = require('./Model.js');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class LogicalCameraImage {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.models = null;
      this.pose = null;
    }
    else {
      if (initObj.hasOwnProperty('models')) {
        this.models = initObj.models
      }
      else {
        this.models = [];
      }
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new geometry_msgs.msg.Pose();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LogicalCameraImage
    // Serialize message field [models]
    // Serialize the length for message field [models]
    bufferOffset = _serializer.uint32(obj.models.length, buffer, bufferOffset);
    obj.models.forEach((val) => {
      bufferOffset = Model.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.pose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LogicalCameraImage
    let len;
    let data = new LogicalCameraImage(null);
    // Deserialize message field [models]
    // Deserialize array length for message field [models]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.models = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.models[i] = Model.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.models.forEach((val) => {
      length += Model.getMessageSize(val);
    });
    return length + 60;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hrwros_gazebo/LogicalCameraImage';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8d82d9667c3484c611dd31e2f750668a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Logical camera image message
    Model[] models                  # models detected (poses in the frame of the camera)
    geometry_msgs/Pose pose         # camera pose
    
    ================================================================================
    MSG: hrwros_gazebo/Model
    string type                     # model type
    geometry_msgs/Pose pose         # model pose
    
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
    const resolved = new LogicalCameraImage(null);
    if (msg.models !== undefined) {
      resolved.models = new Array(msg.models.length);
      for (let i = 0; i < resolved.models.length; ++i) {
        resolved.models[i] = Model.Resolve(msg.models[i]);
      }
    }
    else {
      resolved.models = []
    }

    if (msg.pose !== undefined) {
      resolved.pose = geometry_msgs.msg.Pose.Resolve(msg.pose)
    }
    else {
      resolved.pose = new geometry_msgs.msg.Pose()
    }

    return resolved;
    }
};

module.exports = LogicalCameraImage;
