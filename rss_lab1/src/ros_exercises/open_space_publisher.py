#!/usr/bin/env python

import rospy
from sensor_msgs.msg import LaserScan
from std_msgs.msg import Float32
import random
import math
from ros_exercises.msg import OpenSpace

def subscriber_callback_function(data_to_use):
    	rospy.loginfo("Generating longest range of distance and angle !!!")
        message_to_use=OpenSpace()
	index_to_use=data_to_use.ranges.index(max(data_to_use.ranges))
        message_to_use.distance=max(data_to_use.ranges)
        message_to_use.angle=index_to_use*data_to_use.angle_increment + data_to_use.angle_min
        new_publisher.publish(message_to_use)
def listener_for_subscriber():

    	# In ROS, nodes are uniquely named. If two nodes with the same
    	# name are launched, the previous one is kicked off. The
    	# anonymous=True flag means that rospy will choose a unique
    	# name for our 'listener' node so that multiple listeners can
    	# run simultaneously.
        subscriber_to_use = rospy.get_param('~subs_topic', 'fake_scan')
    	rospy.Subscriber(subscriber_to_use, LaserScan, subscriber_callback_function)

    	# spin() simply keeps python from exiting until this node is stopped
    	rospy.spin()   

if __name__ == '__main__':
	try:
                rospy.init_node('open_space_publisher')
                publisher_to_use = rospy.get_param('~pub_topic', 'open_space')
		new_publisher=rospy.Publisher(publisher_to_use ,OpenSpace,queue_size=10)
		listener_for_subscriber()
        except rospy.ROSInterruptException:
        	pass
