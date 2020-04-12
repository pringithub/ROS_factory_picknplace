# ROS_factory_picknplace
ROS-based factory pipeline in gazebo, using UR arms, Turtlebot, FlexBE state architecture

## Basic Pipeline
One UR robot picks up boxes coming down the assembly line
The robot picks the box from the line and places it on the Turtlebot
The Turtlebot autonomously navigates from the assembly line location to another robot at the other end of the factory
The second UR robot picks up the box from the Turtlebot and places it in the crate
Rinse and Repeat!

## Media

### Picking up box from assembly line
![](./media/wk6p1.png)

### Before picking up box from Turtlebot
![](./media/wk5p3.png)

### After placing box in plate
![](./media/thunderous_dunk.png)

### Turtlebot's amcl-based path planning and object avoidance
![](./media/wk3p3p2.png)

### Partially-complete FlexBE state machine
![](./media/wk6p2p2.png)
