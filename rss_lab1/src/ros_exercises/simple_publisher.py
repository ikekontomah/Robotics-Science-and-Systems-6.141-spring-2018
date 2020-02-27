#!/usr/bin/env python
import rospy
from std_msgs.msg import Float32
import random

def talker_for_publisher():
    publisher = rospy.Publisher('my_random_float',Float32)
    rospy.init_node('simple_publisher')
    rate = rospy.Rate(20) # 10hz
    while not rospy.is_shutdown():
        random_int_generator = random.randint(1,10)
        rospy.loginfo("Generating a random number%f", random_int_generator)
        publisher.publish(random_int_generator)
        rate.sleep()

if __name__ == '__main__':
    try:
        talker_for_publisher()
    except rospy.ROSInterruptException:
        pass
