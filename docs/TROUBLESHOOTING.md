# 🔧 Guía de Solución de Problemas - AnderTools

## 🚨 Problemas Comunes y Soluciones

### 1. Comando `andertools` No Encontrado

**Síntomas:**
```bash
su
andertools
bash: andertools: command not found
```

**Posibles Causas y Soluciones:**

#### Causa A: PATH incorrecto
```bash
# Solución temporal
su
export PATH="/system/bin:$PATH"
andertools

# Solución permanente - añadir al perfil
echo 'export PATH="/system/bin:$PATH"' >> ~/.bashrc
```

#### Causa B: Permisos incorrectos
```bash
su
chmod +x /system/bin/andertools
andertools
```

#### Causa C: Módulo no instalado correctamente
```bash
# Verificar módulo
magisk --list | grep andertools

# Si no aparece, reinstalar el módulo
```

### 2. La Automatización No Funciona

**Síntomas:**
- Las limpiezas programadas no se ejecutan
- El daemon no se inicia

**Diagnóstico:**
```bash
su
andertools
# Opción A -> Opción 4 (Ver estado actual)
```

**Soluciones:**

#### Verificar Estado del Daemon
```bash
# Verificar si el proceso está ejecutándose
su
ps | grep automation_daemon

# Si no está ejecutándose, iniciarlo manualmente
automation_daemon &
```

#### Verificar Configuración
```bash
su
ls -la /sdcard/Android/AnderTools/config/
# Debe existir: automation_enabled, schedule_X_enabled, etc.
```

#### Reiniciar Sistema de Automatización
```bash
su
# Matar proceso existente
pkill automation_daemon

# Reiniciar servicio
sh /data/adb/modules/andertools/service.sh
```

### 3. Aplicaciones Importantes se Cierran

**Síntomas:**
- Apps específicas se cierran durante la limpieza automática
- Pérdida de datos no guardados

**Solución:**
```bash
# Añadir app a exclusiones
su
echo "com.mi.aplicacion.importante" >> /sdcard/Android/AnderTools/config/excluded_apps.txt

# Verificar que se añadió
cat /sdcard/Android/AnderTools/config/excluded_apps.txt
```

**Apps Comúnmente Excluidas:**
```text
com.android.systemui
com.android.launcher
com.google.android.gms
com.whatsapp
com.telegram.messenger
com.spotify.music
```

### 4. Error "Permission Denied"

**Síntomas:**
```bash
andertools: permission denied
```

**Soluciones:**

#### Verificar Root
```bash
su
whoami
# Debe retornar: root
```

#### Verificar SELinux
```bash
su
getenforce
# Si retorna "Enforcing":
setenforce 0  # Temporalmente
andertools
```

#### Verificar Permisos del Archivo
```bash
su
ls -la /system/bin/andertools
chmod 755 /system/bin/andertools
```

### 5. Logs No se Generan

**Síntomas:**
- Archivos de log vacíos o inexistentes
- No se puede rastrear actividad

**Solución:**
```bash
su
# Crear directorios de logs si no existen
mkdir -p /sdcard/Android/AnderTools/logs

# Verificar permisos
chmod 755 /sdcard/Android/AnderTools/logs

# Ejecutar limpieza manual para generar logs
andertools
# Opción 1 (Limpieza Segura)

# Verificar que se generó log
cat /sdcard/Android/AnderTools/logs/automation.log
```

### 6. Incompatibilidad con ROM Personalizada

**Síntomas:**
- El módulo no se instala
- Comportamiento errático

**Diagnóstico:**
```bash
# Verificar versión de Android
getprop ro.build.version.release

# Verificar tipo de ROM
getprop ro.build.display.id

# Verificar arquitectura
getprop ro.product.cpu.abi
```

**Soluciones:**
- Verificar que la ROM sea Android 8.0+
- Contactar soporte con información del dispositivo
- Probar en modo Magisk Core Only

### 7. Problemas de Rendimiento Después de la Instalación

**Síntomas:**
- Dispositivo más lento
- Mayor consumo de batería

**Soluciones:**

#### Ajustar Frecuencia de Automatización
```bash
su
andertools
# Opción A -> Desactivar automatización temporalmente
# Opción A -> Configurar horarios menos frecuentes
```

#### Verificar Apps Excluidas
```bash
# Añadir apps críticas para el sistema
su
echo "com.android.systemui" >> /sdcard/Android/AnderTools/config/excluded_apps.txt
echo "com.android.phone" >> /sdcard/Android/AnderTools/config/excluded_apps.txt
```

## 🔍 Herramientas de Diagnóstico

### Comando de Estado Completo
```bash
su
echo "=== DIAGNÓSTICO ANDERTOOLS ==="
echo "Módulo activo:"
magisk --list | grep andertools
echo "Proceso daemon:"
ps | grep automation_daemon
echo "Configuración:"
ls -la /sdcard/Android/AnderTools/config/
echo "Logs recientes:"
tail -10 /sdcard/Android/AnderTools/logs/automation.log
```

### Verificación de Integridad
```bash
su
# Verificar archivos principales
ls -la /system/bin/andertools
ls -la /system/bin/automation_daemon
ls -la /data/adb/modules/andertools/
```

## 📞 Obtener Ayuda Adicional

### Información para Reportar Problemas
Cuando reportes un problema, incluye:

1. **Información del dispositivo:**
```bash
getprop ro.product.model
getprop ro.build.version.release
getprop ro.product.cpu.abi
```

2. **Información de Magisk:**
```bash
magisk --version
```

3. **Logs relevantes:**
```bash
cat /sdcard/Android/AnderTools/logs/automation.log
```

4. **Estado del módulo:**
```bash
magisk --list | grep andertools
```

### Dónde Obtener Ayuda
- 🐛 [Reportar Bug](https://github.com/Kuaiswap/AnderTools/issues/new?template=bug_report.md)
- 💡 [Solicitar Feature](https://github.com/Kuaiswap/AnderTools/issues/new?template=feature_request.md)
- 📖 [Documentación Técnica](TECHNICAL_DOCUMENTATION.md)
- 🔧 [Guía de Instalación](INSTALLATION_GUIDE.md)

¡La mayoría de problemas se resuelven siguiendo esta guía! 🎯
