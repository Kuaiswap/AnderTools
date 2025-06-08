# Security Policy

## Supported Versions

| Version | Supported          |
| ------- | ------------------ |
| 1.0-CORRECTED   | :white_check_mark: |
| < 1.0   | :x:                |

## Reporting a Vulnerability

We take security seriously. If you discover a security vulnerability in AnderTools, please report it responsibly.

### How to Report

1. **DO NOT** create a public GitHub issue for security vulnerabilities
2. Send an email to: security@andertools.org
3. Include as much detail as possible:
   - Description of the vulnerability
   - Steps to reproduce
   - Potential impact
   - Any suggested fixes

### What to Expect

- **Acknowledgment**: Within 48 hours
- **Initial Assessment**: Within 7 days
- **Regular Updates**: Every 7 days until resolved
- **Resolution**: Varies based on complexity

### Security Considerations

AnderTools operates with root privileges and can affect system stability. Users should:

1. **Only install from official sources**
2. **Review configuration changes carefully**
3. **Keep backups of important data**
4. **Use exclusion lists for critical apps**
5. **Test on non-production devices first**

### Known Security Considerations

- Root access required (inherent Android security model)
- Can terminate system applications if misconfigured
- Automation runs in background with system privileges
- Configuration files stored in user-accessible location

### Security Best Practices

1. **Regular Updates**: Keep AnderTools updated
2. **Configuration Review**: Periodically review automation settings
3. **Log Monitoring**: Monitor logs for unusual activity
4. **Backup Strategy**: Maintain device and configuration backups
