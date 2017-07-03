#!/bin/sh
set -e
case $ICECREAM_SCHEDULER in
	yes) icecc-scheduler -d -n neople -l /var/log/icecc-scheduler
	     echo "/usr/local/sbin/icecc-scheduler -d -l /var/log/icecc-scheduler"
	;;
	*)   echo "Null"
	;;
esac
iceccd -d -s $ICECREAM_SCHEDULER_HOST -m 35 -n neople -l /var/log/icecc.log && tail -f /var/log/icecc.log
