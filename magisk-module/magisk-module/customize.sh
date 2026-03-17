#!/system/bin/sh
# Magisk Module Customize Script

ui_print "- Installing Simple System Tweaks..."

# This script will be executed in post-fs-data mode
# You can add custom commands here to modify system files or settings

# Example: Set some system properties
# resetprop debug.sf.hw 0
# resetprop debug.egl.hw 0

# Example: Optimize some system services
# setprop dalvik.vm.heapgrowthlimit 256m
# setprop dalvik.vm.heapsize 512m

ui_print "- Simple System Tweaks installed successfully!"
