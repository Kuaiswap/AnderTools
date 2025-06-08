#!/system/bin/sh
# AnderTools Uninstall Script

# Stop automation daemon if running
if [ -f "/data/adb/modules/andertools/automation_daemon.pid" ]; then
    PID=$(cat "/data/adb/modules/andertools/automation_daemon.pid")
    kill -TERM "$PID" 2>/dev/null
    rm "/data/adb/modules/andertools/automation_daemon.pid" 2>/dev/null
fi

# Remove Termux integration files
rm -f "/data/data/com.termux/files/usr/bin/rish" 2>/dev/null
rm -f "/data/data/com.termux/files/usr/bin/rish_shizuku.dex" 2>/dev/null

# Note: User configuration files in /sdcard/Android/AnderTools are preserved
# Users can manually remove them if desired
