#!/sbin/sh
/sbin/echo performance > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
/sbin/cat /dev/zero > /dev/block/nandf

if [ -e /sbin/devicespecific.sh ]; then
    . /sbin/devicespecific.sh
fi
