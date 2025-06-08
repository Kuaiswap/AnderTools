#!/system/bin/sh
# AnderTools Installation Script - Enhanced Risk with Automation
# 100% Compatible with original Risk + Advanced Automation Features

# Installation configuration
SKIPMOUNT=false
PROPFILE=true
POSTFSDATA=false
LATESTARTSERVICE=true

# Directory paths
ANDERTOOLS_DIR="/sdcard/Android/AnderTools"
RISK_DIR="/sdcard/Android/Risk"
TERMUX_DIR="/data/data/com.termux/files/usr"

ui_print " "
ui_print "  ╔═══╗───╔╗    ╔═══╗────────╔════╗"
ui_print "  ║╔═╗║───║║    ║╔═╗║────────╚══╗═║"
ui_print "  ║╚═╝╠╦══╣║╔╗  ║║─║╠═╗╔══╦══╗──║╔╬══╦══╦══╦══╦═╗"
ui_print "  ║╔╗╔╬╣══╣╚╝╝  ║╚═╝║╔╗╣╔╗║║═╣──║║║╔╗║╔╗║║═╣══╣╔╝"
ui_print "  ║║║╚╣╠══║╔╗╗  ║╔═╗║║║║╚╝║║═╣──║╚╣╚╝║╚╝║║═╬══║║"
ui_print "  ╚╝╚═╩╩══╩╝╚╝  ╚╝─╚╩╝╚╩══╩══╝──╚═╩══╩══╩══╩══╩╝"
ui_print " "
ui_print "  AnderTools - Enhanced Risk with Automation"
ui_print "  100% Compatible + Advanced Features"
ui_print " "

# System information
if [ "$KSU" == true ]; then
    ui_print "  KernelSu Ver: $KSU_VER"
    ui_print "  KernelSu Ver Code: $KSU_VER_CODE"
    ui_print "  KernelSu Kernel Ver Code: $KSU_KERNEL_VER_CODE"
else
    ui_print "  Magisk Ver: $MAGISK_VER"
    ui_print "  Magisk Ver Code: $MAGISK_VER_CODE"
fi
ui_print " "

sleep 1
ui_print "  ✅ 100% Risk Compatibility Maintained"
ui_print "  ✅ All Original Functions Preserved"
ui_print "  ✅ Enhanced with Smart Automation"
ui_print "  ✅ Gaming Optimization Improved"
ui_print "  ✅ Advanced Memory Management"
sleep 1
ui_print " "

ui_print "- Setting up AnderTools..."

# Extract all module files
unzip -o "$ZIPFILE" 'config/*' -d $MODPATH >&2
unzip -o "$ZIPFILE" 'service.sh' -d $MODPATH >&2
unzip -o "$ZIPFILE" 'system.prop' -d $MODPATH >&2
unzip -o "$ZIPFILE" 'system/*' -d $MODPATH >&2

# Create AnderTools user directories
ui_print "- Creating user directories..."
mkdir -p "$ANDERTOOLS_DIR/config/profiles"
mkdir -p "$ANDERTOOLS_DIR/logs"
mkdir -p "$ANDERTOOLS_DIR/backups"

# Copy configuration files
cp $MODPATH/config/excluded_apps.txt "$ANDERTOOLS_DIR/config/"

# Risk compatibility setup
ui_print "- Setting up Risk compatibility..."
mkdir -p "$RISK_DIR"
# Create symbolic links for Risk compatibility
ln -sf "$ANDERTOOLS_DIR/config/excluded_apps.txt" "$RISK_DIR/excluded_apps.txt" 2>/dev/null
ln -sf "$ANDERTOOLS_DIR/logs/automation.log" "$RISK_DIR/risk.log" 2>/dev/null

# Set executable permissions
chmod +x "$MODPATH/system/bin/andertools"
chmod +x "$MODPATH/system/bin/risk"
chmod +x "$MODPATH/system/bin/automation_daemon"

# Create initial log files
touch "$ANDERTOOLS_DIR/logs/automation.log"
touch "$ANDERTOOLS_DIR/logs/risk.log"

# Create default user preferences
cat > "$ANDERTOOLS_DIR/config/user_settings.json" << EOF
{
  "automation_enabled": false,
  "auto_start_daemon": true,
  "log_level": "INFO",
  "risk_compatibility": true,
  "gaming_optimization": true
}
EOF

# Migrate existing Risk configuration if found
if [ -d "$RISK_DIR" ] && [ -f "$RISK_DIR/excluded_apps.txt" ] && [ ! -f "$ANDERTOOLS_DIR/config/migrated" ]; then
    ui_print "- Migrating existing Risk configuration..."
    cp "$RISK_DIR/excluded_apps.txt" "$ANDERTOOLS_DIR/config/excluded_apps_backup.txt" 2>/dev/null
    touch "$ANDERTOOLS_DIR/config/migrated"
fi

ui_print " "
ui_print "✅ AnderTools installation completed!"
ui_print " "
ui_print "📋 Usage Instructions:"
ui_print "  • AnderTools: su -c andertools"
ui_print "  • Risk compatibility: su -c risk" 
ui_print "  • All original Risk commands work perfectly"
ui_print " "
ui_print "🚀 New Features:"
ui_print "  • Smart automation (option 12 in menu)"
ui_print "  • Enhanced logging and monitoring"
ui_print "  • Improved gaming optimization"
ui_print "  • Background optimization daemon"
ui_print " "
ui_print "📁 Configuration:"
ui_print "  • AnderTools: $ANDERTOOLS_DIR/config/"
ui_print "  • Risk compatible: $RISK_DIR/"
ui_print "  • Logs: $ANDERTOOLS_DIR/logs/"
ui_print " "
ui_print "⚡ Key Improvements:"
ui_print "  • ALL 30 original Risk functions included"
ui_print "  • Enhanced error handling and logging"
ui_print "  • Backward compatibility guaranteed"
ui_print "  • Automation without breaking existing features"
ui_print " "
ui_print "🔄 The module will be active after reboot."
ui_print "   You can also start it manually:"
ui_print "   su -c andertools"
ui_print " "

# Set final permissions
set_permissions() {
    set_perm_recursive $MODPATH 0 0 0755 0644
    set_perm_recursive $MODPATH/system/bin 0 0 0777 0755
    set_perm $ANDERTOOLS_DIR 0 0 0755
    set_perm_recursive $ANDERTOOLS_DIR 1000 1000 0755 0644
}
