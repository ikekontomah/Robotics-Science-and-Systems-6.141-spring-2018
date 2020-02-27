#!/usr/bin/env python

import rospy
from sensor_msgs.msg import LaserScan
import random
import math
def fake_scanner():
	generic_topic_to_publish =  rospy.get_param('~pubs_topic','fake_scan')
	scan_pub = rospy.Publisher(generic_topic_to_publish, LaserScan, queue_size=50)
	count = 0
	publish_rate = rospy.Rate((rospy.get_param('~pubs_rate', 20)))
	while not rospy.is_shutdown():
		current_time = rospy.Time.now()

		scan = LaserScan()

		scan.header.stamp = current_time
		scan.header.frame_id = 'base_link' #changed from laser_frame to base link
	        scan.angle_min = rospy.get_param('~angle_min', (-2*math.pi)/3)
	        scan.angle_max = rospy.get_param('~angle_max', (2*math.pi)/3)
	        scan.angle_increment = rospy.get_param('~angle_increment', math.pi/300)
	        scan.range_min = rospy.get_param('~range_min', 1.0)
	        scan.range_max = rospy.get_param('~range_max', 10.0)

	        scan.ranges = []
	        for i in range(1, 401):
			scan.ranges.append(random.uniform(scan.range_min,scan.range_max))
		rospy.loginfo("Hey there fake scanner !!!")
		scan_pub.publish(scan)
	        count += 1
	        publish_rate.sleep()

if __name__ == '__main__':
	try:
                rospy.init_node('fake_scan_publisher')
        	fake_scanner()
        except rospy.ROSInterruptException:
        	pass
