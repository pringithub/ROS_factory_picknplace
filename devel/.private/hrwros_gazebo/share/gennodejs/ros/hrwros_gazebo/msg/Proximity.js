// Auto-generated. Do not edit!

// (in-package hrwros_gazebo.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Proximity {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.object_detected = null;
      this.min_range = null;
      this.max_range = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('object_detected')) {
        this.object_detected = initObj.object_detected
      }
      else {
        this.object_detected = false;
      }
      if (initObj.hasOwnProperty('min_range')) {
        this.min_range = initObj.min_range
      }
      else {
        this.min_range = 0.0;
      }
      if (initObj.hasOwnProperty('max_range')) {
        this.max_range = initObj.max_range
      }
      else {
        this.max_range = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Proximity
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [object_detected]
    bufferOffset = _serializer.bool(obj.object_detected, buffer, bufferOffset);
    // Serialize message field [min_range]
    bufferOffset = _serializer.float32(obj.min_range, buffer, bufferOffset);
    // Serialize message field [max_range]
    bufferOffset = _serializer.float32(obj.max_range, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Proximity
    let len;
    let data = new Proximity(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [object_detected]
    data.object_detected = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [min_range]
    data.min_range = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [max_range]
    data.max_range = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hrwros_gazebo/Proximity';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7ba3dd0f5ec6df7b148eb145074dcc63';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Single reading from a binary proximity sensor that detects the presence of
    # objects within its sensing range.
    Header header           # timestamp in the header is the time the sensor
                            # returned the sensor reading
    bool object_detected    # is there something in the proximity of the sensor?
    float32 min_range       # minimum range value [m]
    float32 max_range       # maximum range value [m]
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Proximity(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.object_detected !== undefined) {
      resolved.object_detected = msg.object_detected;
    }
    else {
      resolved.object_detected = false
    }

    if (msg.min_range !== undefined) {
      resolved.min_range = msg.min_range;
    }
    else {
      resolved.min_range = 0.0
    }

    if (msg.max_range !== undefined) {
      resolved.max_range = msg.max_range;
    }
    else {
      resolved.max_range = 0.0
    }

    return resolved;
    }
};

module.exports = Proximity;
