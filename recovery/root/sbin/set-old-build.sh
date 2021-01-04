#!/sbin/sh
# This Script is Needed To Set Build Date To Older To Fix Flashing For Some ROMs.

resetprop "ro.build.date" "Fri Jul 20 15:18:00 CST 2018"
resetprop "ro.build.date.utc" "1532071080"

exit 0
