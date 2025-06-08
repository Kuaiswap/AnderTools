# AnderTools - Enhanced Risk with Automation

AnderTools is an enhanced version of the popular Risk Magisk module that maintains **100% compatibility** with the original Risk functionality while adding advanced automation capabilities.

## ✅ Key Features

### Original Risk Functionality (100% Preserved)
- 🧹 **Clean RAM Cache** - Advanced memory cleanup
- 🛑 **Stop Background Apps** - By category (Third-party, Google, System, Social Media)
- ⚙️ **LMKD Adjustment** - Android 10+ memory management
- 📱 **LMK minfree** - Legacy kernel memory management  
- 🧊 **Freeze/Unfreeze Apps** - Disable/enable applications
- 🎮 **Gaming Optimization** - Downscaling for better performance (Android 12+)
- 🖥️ **Resolution Changer** - Dynamic screen resolution adjustment
- ⚡ **Monolith Compile** - ART optimization with reconcile
- 📋 **Custom App Categories** - Fine-grained control
- 🚫 **App Exclusions** - Protect critical applications

### AnderTools Enhancements
- 🤖 **Smart Automation** - Background optimization without manual intervention
- 📊 **Enhanced Logging** - Detailed activity tracking and statistics
- 🎯 **Gaming Detection** - Automatic optimization when games are launched
- 🔋 **Battery Management** - Adaptive optimization based on battery level
- ⏰ **Scheduled Tasks** - Automated maintenance during optimal times
- 🔄 **Backward Compatibility** - Full Risk command compatibility

## 🚀 Installation

1. Download the AnderTools module ZIP file
2. Install via Magisk Manager or KernelSU
3. Reboot your device
4. Ready to use!

## 💻 Usage

### Command Line Access
```bash
# AnderTools enhanced interface
su -c andertools

# Risk compatibility mode (identical to original)
su -c risk
```

### Menu Options

**Original Risk Features (Options 1-11):**
1. **Safe Mode** - Stop third-party apps only
2. **Aggressive Mode** - Stop third-party + Google apps  
3. **Custom Selection** - Choose specific app categories
4. **LMKD Adjustment** - Android 10+ memory management
5. **LMK minfree** - Legacy kernel memory optimization
6. **Clean Cache** - Third-party apps cache cleaning
7. **Freeze Apps** - Disable third-party applications
8. **Unfreeze Apps** - Re-enable disabled applications
9. **Downscale** - Gaming performance optimization (Android 12+)
10. **Resolution Changer** - Screen resolution management
11. **Monolith Compile** - ART compilation optimization

**AnderTools Enhancement:**
12. **Automation Settings** - Configure smart automation features

## 📁 Configuration

### File Locations
- **AnderTools Config**: `/sdcard/Android/AnderTools/config/`
- **Risk Compatible**: `/sdcard/Android/Risk/` (for backward compatibility)
- **Logs**: `/sdcard/Android/AnderTools/logs/`

### Excluded Applications
Edit excluded applications list to prevent certain apps from being terminated:
```
/sdcard/Android/AnderTools/config/excluded_apps.txt
```

Lines starting with `//` are comments. Add one package name per line.

### Automation Configuration
Configure automation behavior:
```
/sdcard/Android/AnderTools/config/user_settings.json
```

## 🤖 Automation Features

### Auto-cleanup
- Configurable interval-based memory cleaning
- Smart detection of system load
- Battery-aware optimization

### Gaming Mode
- Automatic detection of gaming applications
- Pre-optimization before game launch
- Dynamic performance adjustment

### Battery Optimization
- Aggressive cleanup when battery is low
- Adaptive behavior based on charging state
- Power-saving app management

## 🛠️ Technical Details

### Compatibility
- **Android Version**: 8.0+ (API 26+)
- **Root Method**: Magisk or KernelSU
- **Architecture**: Universal (ARM, ARM64, x86, x86_64)

### Memory Management
- **LMKD**: Android 10+ Low Memory Killer Daemon configuration
- **LMK**: Legacy kernel Low Memory Killer support
- **RAM Cache**: Advanced cache management algorithms

### Performance Optimization
- **ART Compilation**: speed-profile optimization with layout compilation
- **Secondary DEX**: Optimized secondary DEX file processing
- **Resolution Scaling**: Dynamic resolution adjustment for performance

## 📊 Automation Daemon

The automation daemon runs in the background and provides:
- **Memory Monitoring**: Continuous RAM usage monitoring
- **App Detection**: Automatic detection of resource-intensive applications
- **Scheduled Tasks**: Time-based optimization tasks
- **Smart Cleanup**: Intelligent memory management based on usage patterns

### Daemon Control
```bash
# Start automation daemon
su -c andertools daemon start

# Stop automation daemon
su -c andertools daemon stop

# Check daemon status
su -c andertools daemon status

# Restart daemon
su -c andertools daemon restart
```

## 🔧 Advanced Configuration

### Custom Automation Rules
Create custom automation rules by editing:
```
/sdcard/Android/AnderTools/config/automation_rules.json
```

### Logging Levels
Adjust logging verbosity in user settings:
- `ERROR`: Only critical errors
- `WARN`: Warnings and errors
- `INFO`: General information (default)
- `DEBUG`: Detailed debugging information

## 🔄 Migration from Risk

AnderTools automatically detects existing Risk installations and:
- Preserves all existing configuration
- Maintains excluded apps list
- Migrates logs and settings
- Provides seamless compatibility

No manual migration is required. Simply install AnderTools and all Risk functionality will continue to work as expected.

## 🆘 Troubleshooting

### Common Issues

**1. ROM Not Supported Error**
- Install Shizuku from Play Store
- Start Shizuku with root permissions
- Use `rish` command in Termux before running AnderTools

**2. LMKD Not Working**
- Verify Android version is 10+
- Reboot device after LMKD configuration
- Check system properties support

**3. LMK minfree Not Available**
- Your kernel may not support legacy LMK
- Use LMKD instead (option 4)
- Check kernel documentation

**4. Automation Not Working**
- Enable automation in settings (option 12)
- Check daemon status: `su -c andertools daemon status`
- Review logs: `/sdcard/Android/AnderTools/logs/automation.log`

### Log Analysis
Check logs for detailed troubleshooting:
```bash
# View recent automation activity
tail -f /sdcard/Android/AnderTools/logs/automation.log

# View Risk-compatible logs
tail -f /sdcard/Android/Risk/risk.log
```

## 🤝 Contributing

AnderTools is based on the excellent Risk module by Zyarexx. We maintain full compatibility while adding enhanced features for power users.

## 📄 License

MIT License - Based on Risk by rakarmp/Zyarexx with enhancements by the AnderTools team.

## 🙏 Credits

- **Original Risk Module**: Zyarexx (@Telegram)
- **AnderTools Enhancements**: AnderTools Development Team
- **Magisk Framework**: topjohnwu
- **KernelSU Support**: tiann

---

**AnderTools**: The evolution of Risk with intelligent automation. 🚀
