#!/system/bin/sh
# AnderTools Service Script - Enhanced Risk with Automation
# Ensures proper initialization and automation daemon startup

MODDIR=${0%/*}
LOG_FILE="/sdcard/Android/AnderTools/logs/automation.log"

# Service logging function
log_service() {
    local message=$1
    local timestamp=$(date '+%Y-%m-%d %H:%M:%S')
    echo "[$timestamp] [SERVICE] $message" >> "$LOG_FILE"
}

# Wait for system to be fully ready
wait_until_login() {
    log_service "Waiting for system boot completion"
    
    while [[ $(getprop sys.boot_completed) -ne 1 && -d "/sdcard" ]]
    do
        sleep 2
    done
    
    # Additional storage permission check
    local test_file="/sdcard/.ANDERTOOLS_PERMISSION_TEST"
    touch "$test_file"
    while [ ! -f "$test_file" ]; do
        touch "$test_file"
        sleep 2
    done
    rm "$test_file"
    
    log_service "System boot completed, storage accessible"
}

# Setup directory structure
setup_directories() {
    log_service "Setting up AnderTools directories"
    
    # Create AnderTools directories
    mkdir -p "/sdcard/Android/AnderTools/config/profiles"
    mkdir -p "/sdcard/Android/AnderTools/logs"
    mkdir -p "/sdcard/Android/AnderTools/backups"
    
    # Create Risk compatibility directories
    mkdir -p "/sdcard/Android/Risk"
    
    # Ensure log files exist
    touch "/sdcard/Android/AnderTools/logs/automation.log"
    touch "/sdcard/Android/AnderTools/logs/risk.log"
    
    # Create compatibility links if they don't exist
    if [ ! -f "/sdcard/Android/Risk/excluded_apps.txt" ]; then
        ln -sf "/sdcard/Android/AnderTools/config/excluded_apps.txt" "/sdcard/Android/Risk/excluded_apps.txt" 2>/dev/null
    fi
    if [ ! -f "/sdcard/Android/Risk/risk.log" ]; then
        ln -sf "/sdcard/Android/AnderTools/logs/automation.log" "/sdcard/Android/Risk/risk.log" 2>/dev/null
    fi
}

# Setup initial configuration if needed
setup_initial_config() {
    local config_file="/sdcard/Android/AnderTools/config/user_settings.json"
    
    if [ ! -f "$config_file" ]; then
        log_service "Creating initial user configuration"
        cat > "$config_file" << EOF
{
  "automation_enabled": false,
  "auto_start_daemon": true,
  "log_level": "INFO",
  "risk_compatibility": true,
  "gaming_optimization": true,
  "cleanup_interval": 1800
}
EOF
    fi
    
    # Copy excluded apps if not exists
    local excluded_apps="/sdcard/Android/AnderTools/config/excluded_apps.txt"
    if [ ! -f "$excluded_apps" ] && [ -f "$MODDIR/config/excluded_apps.txt" ]; then
        cp "$MODDIR/config/excluded_apps.txt" "$excluded_apps"
        log_service "Copied default excluded apps configuration"
    fi
}

# Set proper permissions
setup_permissions() {
    log_service "Setting up file permissions"
    
    # Set executable permissions for binaries
    chmod 755 "$MODDIR/system/bin"/* 2>/dev/null
    
    # Set proper ownership for user directories
    chown -R 1000:1000 "/sdcard/Android/AnderTools" 2>/dev/null
    
    # Ensure proper permissions for configuration files
    chmod 644 "/sdcard/Android/AnderTools/config"/* 2>/dev/null
    
    # Set system properties for Risk compatibility
    setprop persist.security.adbinput 1 2>/dev/null
}

# Check if automation daemon should start
should_start_daemon() {
    local config_file="/sdcard/Android/AnderTools/config/user_settings.json"
    
    if [ -f "$config_file" ]; then
        # Check if auto_start_daemon is enabled
        grep -q '"auto_start_daemon": true' "$config_file" 2>/dev/null
        return $?
    fi
    
    # Default to not starting daemon automatically
    return 1
}

# Start automation daemon if configured
start_automation_daemon() {
    if should_start_daemon; then
        log_service "Auto-start daemon is enabled, starting automation daemon"
        
        # Wait additional time for system stability
        sleep 15
        
        # Start daemon in background
        nohup "$MODDIR/system/bin/automation_daemon" start > /dev/null 2>&1 &
        
        log_service "Automation daemon startup initiated"
    else
        log_service "Auto-start daemon is disabled"
    fi
}

# Main service initialization
main_service() {
    log_service "AnderTools service starting (Enhanced Risk with Automation)"
    
    # Wait for system readiness
    wait_until_login
    
    # Setup directory structure
    setup_directories
    
    # Initialize configuration
    setup_initial_config
    
    # Set permissions
    setup_permissions
    
    # Start automation daemon if configured
    start_automation_daemon
    
    log_service "AnderTools service initialization completed successfully"
    log_service "Module ready - Use 'su -c andertools' or 'su -c risk' to access"
}

# Execute main service function
main_service
