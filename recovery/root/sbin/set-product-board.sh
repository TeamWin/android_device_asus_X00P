#!/sbin/sh
# This Script is Needed To Set "ro.product.board" To Fix Stock ROM Firmware Installation.

platform_type=$(getprop ro.boot.platformtype)
echo $platform_type

case $platform_type in
    "msm8917")
        resetprop "ro.product.board" "MSM8917"
        ;;
    *)
        resetprop "ro.product.board" "MSM8937"
        ;;
esac

exit 0
