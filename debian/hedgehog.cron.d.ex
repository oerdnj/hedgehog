#
# Regular cron jobs for the hedgehog package
#
0 4	* * *	root	[ -x /usr/bin/hedgehog_maintenance ] && /usr/bin/hedgehog_maintenance
