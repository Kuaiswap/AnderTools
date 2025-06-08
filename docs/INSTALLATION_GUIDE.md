# 📱 Guía de Instalación Detallada - AnderTools

## 🔧 Preparación del Dispositivo

### Requisitos Previos
- ✅ Dispositivo Android **8.0+** (API 26 o superior)
- ✅ **Bootloader desbloqueado**
- ✅ **Magisk 20.0+** o **KernelSU** instalado
- ✅ **50MB** de espacio libre en `/data`
- ✅ Aplicación de terminal (recomendado: **Termux**)

### Verificar Compatibilidad
Ejecuta en terminal:
```bash
# Verificar versión de Android
getprop ro.build.version.release

# Verificar Magisk
magisk --version

# Verificar arquitectura
getprop ro.product.cpu.abi
```

## 📥 Métodos de Instalación

### Método 1: Magisk Manager (Recomendado)
1. **Descargar**: Obtén `AnderTools-v1.0-CORRECTED.zip` desde [Releases](https://github.com/Kuaiswap/AnderTools/releases)
2. **Abrir Magisk**: Abre la app Magisk Manager
3. **Navegar**: Ve a la sección **"Módulos"**
4. **Instalar**: Toca **"Instalar desde almacenamiento"**
5. **Seleccionar**: Elige el archivo `AnderTools-v1.0-CORRECTED.zip`
6. **Esperar**: La instalación se completará automáticamente
7. **Reiniciar**: Reinicia tu dispositivo cuando se solicite

### Método 2: Terminal/ADB
```bash
# Descargar el módulo
wget https://github.com/Kuaiswap/AnderTools/releases/download/v1.0-CORRECTED/AnderTools-v1.0-CORRECTED.zip

# Instalar vía Magisk CLI
su
magisk --install-module AnderTools-v1.0-CORRECTED.zip

# Reiniciar
reboot
```

### Método 3: KernelSU
1. Abre KernelSU Manager
2. Ve a la sección **"Módulos"**
3. Toca **"Instalar desde almacenamiento local"**
4. Selecciona el archivo ZIP descargado
5. Reinicia el dispositivo

## 🔍 Verificación de Instalación

### Paso 1: Verificar el Módulo
```bash
# Verificar que el módulo esté activo
su
magisk --list
# Debe aparecer: andertools
```

### Paso 2: Probar el Comando
```bash
# Acceder como superusuario
su

# Ejecutar AnderTools
andertools

# Si ves el menú principal, ¡la instalación fue exitosa!
```

### Paso 3: Verificar Compatibilidad con Risk
```bash
# El comando original de Risk debe seguir funcionando
risk
```

## 🚨 Solución de Problemas

### Problema: "comando no encontrado"
**Causa**: Permisos o PATH incorrecto
**Solución**:
```bash
su
export PATH="/system/bin:$PATH"
andertools
```

### Problema: Módulo no aparece en Magisk
**Causa**: Instalación incompleta
**Solución**:
1. Desinstalar el módulo desde Magisk
2. Limpiar cache: `su -c "rm -rf /data/adb/modules/andertools"`
3. Reiniciar
4. Reinstalar

### Problema: Error de permisos
**Causa**: SELinux o permisos restrictivos
**Solución**:
```bash
su
setenforce 0  # Temporal
andertools
```

### Problema: "module.prop" no válido
**Causa**: Archivo ZIP corrupto
**Solución**:
1. Verificar hash MD5: `7d9c7d3e6bce1e523aa7fb5199eea153`
2. Descargar nuevamente el archivo
3. Verificar que no esté corrupto

## 🔄 Migración desde Risk

AnderTools **detecta automáticamente** instalaciones previas de Risk y migra:
- ✅ Lista de aplicaciones excluidas (`excluded_apps.txt`)
- ✅ Configuraciones existentes
- ✅ Logs históricos

**No se requiere acción manual para la migración.**

## 📱 Primeros Pasos Después de la Instalación

### Configuración Básica
```bash
su
andertools
# Selecciona opción 'A' para configurar automatización
# Configura horarios según tus necesidades
```

### Configuración Recomendada para Principiantes
- **Horario 1**: 08:00 - Limpieza Segura
- **Horario 2**: 20:00 - Solo RAM

### Configuración para Gaming
- **Horario 1**: 1 hora antes de jugar - Limpieza Agresiva
- **Horario 2**: Después de jugar - Limpieza Segura

## 📞 Soporte

Si tienes problemas:
1. Revisa esta guía completa
2. Consulta la [documentación técnica](docs/TECHNICAL_DOCUMENTATION.md)
3. Abre un [issue](https://github.com/Kuaiswap/AnderTools/issues) con detalles del problema

¡Disfruta de AnderTools! 🚀
