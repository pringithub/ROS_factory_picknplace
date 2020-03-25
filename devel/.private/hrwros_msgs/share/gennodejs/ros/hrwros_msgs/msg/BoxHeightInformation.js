// Auto-generated. Do not edit!

// (in-package hrwros_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class BoxHeightInformation {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.box_height = null;
    }
    else {
      if (initObj.hasOwnProperty('box_height')) {
        this.box_height = initObj.box_height
      }
      else {
        this.box_height = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BoxHeightInformation
    // Serialize message field [box_height]
    bufferOffset = _serializer.float32(obj.box_height, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BoxHeightInformation
    let len;
    let data = new BoxHeightInformation(null);
    // Deserialize message field [box_height]
    data.box_height = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hrwros_msgs/BoxHeightInformation';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2b427ae616da4facf1fbfe9829db6b50';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 box_height
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BoxHeightInformation(null);
    if (msg.box_height !== undefined) {
      resolved.box_height = msg.box_height;
    }
    else {
      resolved.box_height = 0.0
    }

    return resolved;
    }
};

module.exports = BoxHeightInformation;
