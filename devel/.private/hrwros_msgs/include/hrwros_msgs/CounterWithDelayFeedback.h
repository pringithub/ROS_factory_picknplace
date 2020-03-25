// Generated by gencpp from file hrwros_msgs/CounterWithDelayFeedback.msg
// DO NOT EDIT!


#ifndef HRWROS_MSGS_MESSAGE_COUNTERWITHDELAYFEEDBACK_H
#define HRWROS_MSGS_MESSAGE_COUNTERWITHDELAYFEEDBACK_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace hrwros_msgs
{
template <class ContainerAllocator>
struct CounterWithDelayFeedback_
{
  typedef CounterWithDelayFeedback_<ContainerAllocator> Type;

  CounterWithDelayFeedback_()
    : counts_elapsed(0)  {
    }
  CounterWithDelayFeedback_(const ContainerAllocator& _alloc)
    : counts_elapsed(0)  {
  (void)_alloc;
    }



   typedef uint32_t _counts_elapsed_type;
  _counts_elapsed_type counts_elapsed;





  typedef boost::shared_ptr< ::hrwros_msgs::CounterWithDelayFeedback_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::hrwros_msgs::CounterWithDelayFeedback_<ContainerAllocator> const> ConstPtr;

}; // struct CounterWithDelayFeedback_

typedef ::hrwros_msgs::CounterWithDelayFeedback_<std::allocator<void> > CounterWithDelayFeedback;

typedef boost::shared_ptr< ::hrwros_msgs::CounterWithDelayFeedback > CounterWithDelayFeedbackPtr;
typedef boost::shared_ptr< ::hrwros_msgs::CounterWithDelayFeedback const> CounterWithDelayFeedbackConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::hrwros_msgs::CounterWithDelayFeedback_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::hrwros_msgs::CounterWithDelayFeedback_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace hrwros_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'shape_msgs': ['/opt/ros/melodic/share/shape_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/melodic/share/sensor_msgs/cmake/../msg'], 'moveit_msgs': ['/opt/ros/melodic/share/moveit_msgs/cmake/../msg'], 'trajectory_msgs': ['/opt/ros/melodic/share/trajectory_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/melodic/share/std_msgs/cmake/../msg'], 'object_recognition_msgs': ['/opt/ros/melodic/share/object_recognition_msgs/cmake/../msg'], 'octomap_msgs': ['/opt/ros/melodic/share/octomap_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/melodic/share/geometry_msgs/cmake/../msg'], 'hrwros_msgs': ['/home/lxu9/hrwros_ws/src/hrwros/hrwros_msgs/msg', '/home/lxu9/hrwros_ws/devel/.private/hrwros_msgs/share/hrwros_msgs/msg'], 'actionlib_msgs': ['/opt/ros/melodic/share/actionlib_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::hrwros_msgs::CounterWithDelayFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::hrwros_msgs::CounterWithDelayFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hrwros_msgs::CounterWithDelayFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hrwros_msgs::CounterWithDelayFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hrwros_msgs::CounterWithDelayFeedback_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hrwros_msgs::CounterWithDelayFeedback_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::hrwros_msgs::CounterWithDelayFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cca3cfadafd90f6c2989b5f5e521eb59";
  }

  static const char* value(const ::hrwros_msgs::CounterWithDelayFeedback_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xcca3cfadafd90f6cULL;
  static const uint64_t static_value2 = 0x2989b5f5e521eb59ULL;
};

template<class ContainerAllocator>
struct DataType< ::hrwros_msgs::CounterWithDelayFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "hrwros_msgs/CounterWithDelayFeedback";
  }

  static const char* value(const ::hrwros_msgs::CounterWithDelayFeedback_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::hrwros_msgs::CounterWithDelayFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"uint32 counts_elapsed		# Feedback message: number of counts elapsed.\n"
"\n"
;
  }

  static const char* value(const ::hrwros_msgs::CounterWithDelayFeedback_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::hrwros_msgs::CounterWithDelayFeedback_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.counts_elapsed);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CounterWithDelayFeedback_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::hrwros_msgs::CounterWithDelayFeedback_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::hrwros_msgs::CounterWithDelayFeedback_<ContainerAllocator>& v)
  {
    s << indent << "counts_elapsed: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.counts_elapsed);
  }
};

} // namespace message_operations
} // namespace ros

#endif // HRWROS_MSGS_MESSAGE_COUNTERWITHDELAYFEEDBACK_H
