// Auto-generated. Do not edit!

// (in-package hrwros_gazebo.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ConveyorBeltState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.power = null;
    }
    else {
      if (initObj.hasOwnProperty('power')) {
        this.power = initObj.power
      }
      else {
        this.power = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ConveyorBeltState
    // Serialize message field [power]
    bufferOffset = _serializer.float64(obj.power, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ConveyorBeltState
    let len;
    let data = new ConveyorBeltState(null);
    // Deserialize message field [power]
    data.power = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hrwros_gazebo/ConveyorBeltState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b61bda1d4e0075084b2082bebb59ea34';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Conveyor belt state message
    float64 power    # power of the belt (percentage, in +Y direction of belt frame)
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ConveyorBeltState(null);
    if (msg.power !== undefined) {
      resolved.power = msg.power;
    }
    else {
      resolved.power = 0.0
    }

    return resolved;
    }
};

module.exports = ConveyorBeltState;
