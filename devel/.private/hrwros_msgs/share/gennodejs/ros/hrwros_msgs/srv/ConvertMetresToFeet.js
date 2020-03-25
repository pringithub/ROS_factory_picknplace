// Auto-generated. Do not edit!

// (in-package hrwros_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class ConvertMetresToFeetRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.distance_metres = null;
    }
    else {
      if (initObj.hasOwnProperty('distance_metres')) {
        this.distance_metres = initObj.distance_metres
      }
      else {
        this.distance_metres = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ConvertMetresToFeetRequest
    // Serialize message field [distance_metres]
    bufferOffset = _serializer.float64(obj.distance_metres, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ConvertMetresToFeetRequest
    let len;
    let data = new ConvertMetresToFeetRequest(null);
    // Deserialize message field [distance_metres]
    data.distance_metres = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hrwros_msgs/ConvertMetresToFeetRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9cae22e6f10f281a58edfb02da2709c6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 distance_metres
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ConvertMetresToFeetRequest(null);
    if (msg.distance_metres !== undefined) {
      resolved.distance_metres = msg.distance_metres;
    }
    else {
      resolved.distance_metres = 0.0
    }

    return resolved;
    }
};

class ConvertMetresToFeetResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.distance_feet = null;
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('distance_feet')) {
        this.distance_feet = initObj.distance_feet
      }
      else {
        this.distance_feet = 0.0;
      }
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ConvertMetresToFeetResponse
    // Serialize message field [distance_feet]
    bufferOffset = _serializer.float64(obj.distance_feet, buffer, bufferOffset);
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ConvertMetresToFeetResponse
    let len;
    let data = new ConvertMetresToFeetResponse(null);
    // Deserialize message field [distance_feet]
    data.distance_feet = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hrwros_msgs/ConvertMetresToFeetResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a1e3afbb19bd7a378a88d85bbef815e6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 distance_feet
    bool success
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ConvertMetresToFeetResponse(null);
    if (msg.distance_feet !== undefined) {
      resolved.distance_feet = msg.distance_feet;
    }
    else {
      resolved.distance_feet = 0.0
    }

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
  Request: ConvertMetresToFeetRequest,
  Response: ConvertMetresToFeetResponse,
  md5sum() { return '8ee6357200ff4b8dfb11e637c7e317c0'; },
  datatype() { return 'hrwros_msgs/ConvertMetresToFeet'; }
};
