#!/bin/bash -e

echo "root"|su -c 'rfkill unblock wifi' root

echo "root"|su -c 'ifconfig wlan0 up' root

if [ -f /etc/wpa_supplicant/wpa_supplicant.conf ] ; then

  echo "root"|su -c 'wpa_supplicant -B -c /etc/wpa_supplicant/wpa_supplicant.co$

fi

echo "root"|su -c 'udhcpc -b -i wlan0' root