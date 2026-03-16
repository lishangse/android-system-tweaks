#!/system/bin/sh
# Android CPU Governor and I/O Scheduler Tweak Script
# Optimized for Snapdragon 888 (lahaina)

# Set CPU Governor to Schedutil for all clusters
for i in 0 4 7; do
    echo "schedutil" > /sys/devices/system/cpu/cpufreq/policy$i/scaling_governor
    done

    # Tweak Schedutil rate limits
    echo 500 > /sys/devices/system/cpu/cpufreq/policy0/schedutil/up_rate_limit_us
    echo 2000 > /sys/devices/system/cpu/cpufreq/policy0/schedutil/down_rate_limit_us

    # Set I/O Scheduler to MQ-Deadline
    for device in /sys/block/sd*; do
        echo "mq-deadline" > $device/queue/scheduler
            echo 256 > $device/queue/read_ahead_kb
            done

            echo "CPU and I/O tweaks applied successfully."

            
