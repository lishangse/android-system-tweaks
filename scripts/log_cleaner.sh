#!/system/bin/sh
# Android Log and Cache Cleaner Script
# Helps to free up space and improve system responsiveness

echo "Starting system cleanup..."

# Clear Logcat
logcat -c
echo "Logcat cleared."

# Clear app caches (requires root)
rm -rf /data/cache/*
rm -rf /cache/*
echo "System cache cleared."

# Clear tombstone files
rm -rf /data/tombstones/*
echo "Tombstones cleared."

# Clear Dropbox logs
rm -rf /data/system/dropbox/*
echo "Dropbox logs cleared."

echo "Cleanup completed successfully."

