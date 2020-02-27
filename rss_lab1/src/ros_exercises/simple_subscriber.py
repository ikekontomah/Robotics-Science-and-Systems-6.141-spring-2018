#!/usr/bin/env python

import rospy
from std_msgs.msg import Float32
import random
import math

def subscriber_callback_function(data_to_use):
    rospy.loginfo("Generating log of random floats from publisher !!!")
    new_publisher.publish(math.log(data_to_use.data))
def listener_for_subscriber():

    # In ROS, nodes are uniquely named. If two nodes with the same
    # name are launched, the previous one is kicked off. The
    # anonymous=True flag means that rospy will choose a unique
    # name for our 'listener' node so that multiple listeners can
    # run simultaneously.
    rospy.init_node('simple_subscriber')

    rospy.Subscriber('my_random_float',Float32, subscriber_callback_function)

    # spin() simply keeps python from exiting until this node is stopped
    rospy.spin()

if __name__ == '__main__':
    try:
        new_publisher=rospy.Publisher('random_float_log',Float32,queue_size=10)
	listener_for_subscriber()
    except rospy.ROSInterruptException:
        pass
