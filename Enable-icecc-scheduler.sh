#!/bin/sh
set -e
case $ICECREAM_SCHEDULER in
	yes) icecc-scheduler -d -l /var/log/icecc-scheduler
	     echo "/usr/local/sbin/icecc-scheduler -d -l /var/log/icecc-scheduler --nice -20 ICECREAM_SCHEDULER = ${ICECREAM_SCHEDULER}"
	;;
	*)   echo "Null"
	;;
esac
iceccd -d -s $ICECREAM_SCHEDULER_HOST -m 35 -l /var/log/icecc.log && tail -f /var/log/icecc.log
