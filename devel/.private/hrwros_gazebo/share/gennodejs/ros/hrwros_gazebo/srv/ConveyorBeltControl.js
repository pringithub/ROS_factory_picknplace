// Auto-generated. Do not edit!

// (in-package hrwros_gazebo.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ConveyorBeltState = require('../msg/ConveyorBeltState.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class ConveyorBeltControlRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.state = null;
    }
    else {
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = new ConveyorBeltState();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ConveyorBeltControlRequest
    // Serialize message field [state]
    bufferOffset = ConveyorBeltState.serialize(obj.state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ConveyorBeltControlRequest
    let len;
    let data = new ConveyorBeltControlRequest(null);
    // Deserialize message field [state]
    data.state = ConveyorBeltState.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hrwros_gazebo/ConveyorBeltControlRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f4113767effdce7b5dc8d88907190a3b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    ConveyorBeltState state
    
    
    ================================================================================
    MSG: hrwros_gazebo/ConveyorBeltState
    # Conveyor belt state message
    float64 power    # power of the belt (percentage, in +Y direction of belt frame)
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ConveyorBeltControlRequest(null);
    if (msg.state !== undefined) {
      resolved.state = ConveyorBeltState.Resolve(msg.state)
    }
    else {
      resolved.state = new ConveyorBeltState()
    }

    return resolved;
    }
};

class ConveyorBeltControlResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ConveyorBeltControlResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ConveyorBeltControlResponse
    let len;
    let data = new ConveyorBeltControlResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hrwros_gazebo/ConveyorBeltControlResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '358e233cde0c8a8bcfea4ce193f8fc15';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ConveyorBeltControlResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    return resolved;
    }
};

module.exports = {
  Request: ConveyorBeltControlRequest,
  Response: ConveyorBeltControlResponse,
  md5sum() { return '9530768849645096e15ae7f875771ab2'; },
  datatype() { return 'hrwros_gazebo/ConveyorBeltControl'; }
};
