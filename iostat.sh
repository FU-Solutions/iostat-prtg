# Crontabfile /etc/cron.d/iostat
# Collect data iops for zabbix
* * * * * zabbix /usr/local/bin/iostat-collect.sh /tmp/iostat.out 60
