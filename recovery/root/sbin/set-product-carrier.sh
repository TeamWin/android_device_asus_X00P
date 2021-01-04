#!/sbin/sh
# This Script is Needed To Set "ro.product.carrier" To Fix Stock ROM Installation.

sku=$(getprop ro.boot.country_code)
echo $sku

case $sku in
    "JP")
        resetprop "ro.product.carrier" "ACJ-ASUS_X00P-WW"
        ;;
    "TIM")
        resetprop "ro.product.carrier" "TIM-ASUS_X00P-WW"
        ;;
    *)
        resetprop "ro.product.carrier" "ASUS-ASUS_X00P-WW"
        ;;
esac

exit 0
