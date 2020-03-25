// Auto-generated. Do not edit!

// (in-package hrwros_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let sensor_msgs = _finder('sensor_msgs');

//-----------------------------------------------------------

class SensorInformation {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sensor_data = null;
      this.maker_name = null;
      this.part_number = null;
    }
    else {
      if (initObj.hasOwnProperty('sensor_data')) {
        this.sensor_data = initObj.sensor_data
      }
      else {
        this.sensor_data = new sensor_msgs.msg.Range();
      }
      if (initObj.hasOwnProperty('maker_name')) {
        this.maker_name = initObj.maker_name
      }
      else {
        this.maker_name = '';
      }
      if (initObj.hasOwnProperty('part_number')) {
        this.part_number = initObj.part_number
      }
      else {
        this.part_number = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SensorInformation
    // Serialize message field [sensor_data]
    bufferOffset = sensor_msgs.msg.Range.serialize(obj.sensor_data, buffer, bufferOffset);
    // Serialize message field [maker_name]
    bufferOffset = _serializer.string(obj.maker_name, buffer, bufferOffset);
    // Serialize message field [part_number]
    bufferOffset = _serializer.uint32(obj.part_number, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SensorInformation
    let len;
    let data = new SensorInformation(null);
    // Deserialize message field [sensor_data]
    data.sensor_data = sensor_msgs.msg.Range.deserialize(buffer, bufferOffset);
    // Deserialize message field [maker_name]
    data.maker_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [part_number]
    data.part_number = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += sensor_msgs.msg.Range.getMessageSize(object.sensor_data);
    length += object.maker_name.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hrwros_msgs/SensorInformation';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd963bb325e7c9c7478db23eeb529f1eb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    sensor_msgs/Range sensor_data
    string maker_name
    uint32 part_number
    
    ================================================================================
    MSG: sensor_msgs/Range
    # Single range reading from an active ranger that emits energy and reports
    # one range reading that is valid along an arc at the distance measured. 
    # This message is  not appropriate for laser scanners. See the LaserScan
    # message if you are working with a laser scanner.
    
    # This message also can represent a fixed-distance (binary) ranger.  This
    # sensor will have min_range===max_range===distance of detection.
    # These sensors follow REP 117 and will output -Inf if the object is detected
    # and +Inf if the object is outside of the detection range.
    
    Header header           # timestamp in the header is the time the ranger
                            # returned the distance reading
    
    # Radiation type enums
    # If you want a value added to this list, send an email to the ros-users list
    uint8 ULTRASOUND=0
    uint8 INFRARED=1
    
    uint8 radiation_type    # the type of radiation used by the sensor
                            # (sound, IR, etc) [enum]
    
    float32 field_of_view   # the size of the arc that the distance reading is
                            # valid for [rad]
                            # the object causing the range reading may have
                            # been anywhere within -field_of_view/2 and
                            # field_of_view/2 at the measured range. 
                            # 0 angle corresponds to the x-axis of the sensor.
    
    float32 min_range       # minimum range value [m]
    float32 max_range       # maximum range value [m]
                            # Fixed distance rangers require min_range==max_range
    
    float32 range           # range data [m]
                            # (Note: values < range_min or > range_max
                            # should be discarded)
                            # Fixed distance rangers only output -Inf or +Inf.
                            # -Inf represents a detection within fixed distance.
                            # (Detection too close to the sensor to quantify)
                            # +Inf represents no detection within the fixed distance.
                            # (Object out of range)
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
    const resolved = new SensorInformation(null);
    if (msg.sensor_data !== undefined) {
      resolved.sensor_data = sensor_msgs.msg.Range.Resolve(msg.sensor_data)
    }
    else {
      resolved.sensor_data = new sensor_msgs.msg.Range()
    }

    if (msg.maker_name !== undefined) {
      resolved.maker_name = msg.maker_name;
    }
    else {
      resolved.maker_name = ''
    }

    if (msg.part_number !== undefined) {
      resolved.part_number = msg.part_number;
    }
    else {
      resolved.part_number = 0
    }

    return resolved;
    }
};

module.exports = SensorInformation;
