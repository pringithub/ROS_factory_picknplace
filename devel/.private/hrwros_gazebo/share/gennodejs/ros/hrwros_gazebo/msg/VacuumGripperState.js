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

class VacuumGripperState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.enabled = null;
      this.attached = null;
    }
    else {
      if (initObj.hasOwnProperty('enabled')) {
        this.enabled = initObj.enabled
      }
      else {
        this.enabled = false;
      }
      if (initObj.hasOwnProperty('attached')) {
        this.attached = initObj.attached
      }
      else {
        this.attached = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VacuumGripperState
    // Serialize message field [enabled]
    bufferOffset = _serializer.bool(obj.enabled, buffer, bufferOffset);
    // Serialize message field [attached]
    bufferOffset = _serializer.bool(obj.attached, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VacuumGripperState
    let len;
    let data = new VacuumGripperState(null);
    // Deserialize message field [enabled]
    data.enabled = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [attached]
    data.attached = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hrwros_gazebo/VacuumGripperState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '60714eed20fb6d744d2c10a1fb15dc69';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Vacum gripper state message
    # This structure contains the state of the gripper.
    
    # Is the suction enabled?
    bool enabled
    
    # Is an object attached to the gripper?
    bool attached
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VacuumGripperState(null);
    if (msg.enabled !== undefined) {
      resolved.enabled = msg.enabled;
    }
    else {
      resolved.enabled = false
    }

    if (msg.attached !== undefined) {
      resolved.attached = msg.attached;
    }
    else {
      resolved.attached = false
    }

    return resolved;
    }
};

module.exports = VacuumGripperState;
