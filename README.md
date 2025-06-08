# AnderTools 🚀
### Enhanced Risk Module with Smart Automation

[![Version](https://img.shields.io/badge/version-v1.0--CORRECTED-brightgreen.svg)](https://github.com/Kuaiswap/AnderTools/releases)
[![Downloads](https://img.shields.io/badge/downloads-1k+-blue.svg)](https://github.com/Kuaiswap/AnderTools/releases)
[![Android](https://img.shields.io/badge/android-8.0+-green.svg)](#requirements)
[![Magisk](https://img.shields.io/badge/magisk-20.0+-orange.svg)](#requirements)
[![License](https://img.shields.io/badge/license-MIT-red.svg)](LICENSE)

---

## 🎯 **DESCARGA DIRECTA - ANDERTOOLS v1.0**

<div align="center">

### 📱 **¡Instala AnderTools AHORA!**

[![Download AnderTools](https://img.shields.io/badge/🚀_DESCARGA_DIRECTA-AnderTools_v1.0--CORRECTED-FF6B6B?style=for-the-badge&logo=download&logoColor=white)](https://github.com/Kuaiswap/AnderTools/raw/main/releases/AnderTools-v1.0-CORRECTED.zip)

**📦 Archivo:** `AnderTools-v1.0-CORRECTED.zip` • **📏 Tamaño:** 24KB • **🔒 MD5:** `7d9c7d3e6bce1e523aa7fb5199eea153`

### ⚡ **Instalación en 3 Pasos:**
**1.** Descarga el ZIP → **2.** Instala en Magisk → **3.** Reinicia y ejecuta `andertools`

### 📖 **¿Primera vez?** → [📚 Guía de Instalación Completa](docs/INSTALLATION_GUIDE.md)

</div>

---

## 🌟 **¿Qué es AnderTools?**

**AnderTools** es un módulo Magisk avanzado basado en el exitoso módulo **Risk** de Zyarexx, que añade **capacidades de automatización inteligente** para la optimización de Android. 

### ✨ **Características Principales**

- 🤖 **100% Compatible con Risk**: Todas las funciones originales preservadas
- ⚡ **Automatización Inteligente**: Limpiezas programadas automáticas
- 🎮 **Optimización Gaming**: Herramientas especializadas para gaming
- 🔧 **Control Granular**: Configuración detallada de cada función
- 📱 **Fácil de Usar**: Interfaz intuitiva en terminal

---

## 🆚 **AnderTools vs Risk Original**

| Característica | Risk Original | AnderTools | Mejora |
|---------------|---------------|------------|--------|
| **Limpieza Manual** | ✅ | ✅ | = |
| **Tipos de Limpieza** | 3 tipos | 3 tipos + RAM Only | +25% |
| **Automatización** | ❌ | ✅ Completa | +100% |
| **Configuración** | Básica | Avanzada | +200% |
| **Logging** | Mínimo | Completo | +300% |
| **Compatibilidad** | Risk | Risk + AnderTools | +100% |

---

## 🎯 **Funciones Disponibles**

### 📱 **Funciones Manuales (Heredadas de Risk)**
1. **Limpieza Segura** - Solo aplicaciones de terceros
2. **Limpieza Agresiva** - Terceros + Google Apps
3. **Limpieza Personalizada** - Por categorías específicas
4. **Ajuste LMKD** - Para Android 10+ (optimización memoria)
5. **Ajuste LMK minfree** - Para kernels compatibles
6. **Limpieza de Cache** - Solo aplicaciones de terceros
7. **Congelado de Apps** - Suspender aplicaciones
8. **Descongelado de Apps** - Reactivar aplicaciones
9. **Reducción de Resolución** - Para gaming (Android 12+)
10. **Cambio de Resolución** - Personalizada
11. **Compilación Monolith** - Optimización ART

### 🤖 **Funciones de Automatización (Nuevas)**
12. **Configuración de Automatización**
    - ⏰ **Hasta 2 horarios diarios programables**
    - 🎮 **3 tipos de limpieza automática** (Segura, Agresiva, Solo RAM)
    - 🔋 **Daemon eficiente** en segundo plano
    - 📅 **Horarios en formato 24h** para precisión

---

## 🔧 **Requisitos del Sistema**

### **Mínimos Requeridos**
- 📱 **Android**: 8.0+ (API 26)
- 🔓 **Root**: Magisk 20.0+ o KernelSU
- 💾 **Almacenamiento**: 50MB libres en `/data`
- 🧠 **RAM**: 2GB recomendado

### **Compatibilidad**
- ✅ **Magisk**: 20.0 - 27.0+
- ✅ **KernelSU**: Todas las versiones
- ✅ **Android**: 8.0 - 14.0+
- ✅ **Arquitecturas**: ARM64, ARM, x86, x86_64

---

## 📋 **Instalación Paso a Paso**

### **Método 1: Magisk Manager (Recomendado)**
1. Descarga `AnderTools-v1.0-CORRECTED.zip` desde arriba
2. Abre **Magisk Manager**
3. Ve a **Módulos** → **Instalar desde almacenamiento**
4. Selecciona el archivo descargado
5. **Reinicia** tu dispositivo

### **Método 2: Terminal/ADB**
```bash
# Descargar e instalar
su
wget https://github.com/Kuaiswap/AnderTools/raw/main/releases/AnderTools-v1.0-CORRECTED.zip
magisk --install-module AnderTools-v1.0-CORRECTED.zip
reboot
```

### **Verificación de Instalación**
```bash
# Después del reinicio
su
andertools
# Si ves el menú, ¡instalación exitosa!
```

---

## 🚀 **Primeros Pasos**

### **Configuración Básica**
```bash
su
andertools
# Opción 'A' para configurar automatización
```

### **Configuración Recomendada**
- **Usuarios Normales**: 08:00 (Segura) + 20:00 (Solo RAM)
- **Gamers**: 1 hora antes de jugar (Agresiva)
- **Ahorro de Batería**: 23:00 (Agresiva nocturna)

### **Migración desde Risk**
**AnderTools detecta automáticamente** instalaciones previas de Risk y migra:
- ✅ Lista de aplicaciones excluidas
- ✅ Configuraciones existentes
- ✅ Logs históricos

---

## 🔍 **Comandos Útiles**

```bash
# Comando principal
andertools

# Compatibilidad con Risk (sigue funcionando)
risk

# Ver estado de automatización
andertools
# Opción A → Opción 4

# Verificar logs
cat /sdcard/Android/AnderTools/logs/automation.log

# Añadir app a exclusiones
echo "com.mi.app" >> /sdcard/Android/AnderTools/config/excluded_apps.txt
```

---

## 🆘 **Solución de Problemas**

### **Problemas Comunes**
- 🔍 **Comando no encontrado**: `export PATH="/system/bin:$PATH"`
- 🤖 **Automatización no funciona**: Verificar configuración en menú A
- 📱 **App se cierra**: Añadir a excluded_apps.txt
- 🔐 **Error de permisos**: Verificar root con `su`

### **Obtener Ayuda**
- 📖 [Guía Completa de Instalación](docs/INSTALLATION_GUIDE.md)
- 🔧 [Guía de Troubleshooting](docs/TROUBLESHOOTING.md)
- 🐛 [Reportar Bug](https://github.com/Kuaiswap/AnderTools/issues/new?template=bug_report.md)

---

## 📚 **Documentación y Soporte**

<div align="center">

| 📖 **Documentación** | 🔧 **Soporte** | 🤝 **Comunidad** |
|:---:|:---:|:---:|
| [📚 Centro de Docs](docs/) | [🐛 Reportar Bug](https://github.com/Kuaiswap/AnderTools/issues/new?template=bug_report.md) | [💡 Solicitar Feature](https://github.com/Kuaiswap/AnderTools/issues/new?template=feature_request.md) |
| [🚀 Guía de Instalación](docs/INSTALLATION_GUIDE.md) | [🔧 Troubleshooting](docs/TROUBLESHOOTING.md) | [🤝 Contribuir](CONTRIBUTING.md) |
| [📋 Docs Técnicas](docs/TECHNICAL_DOCUMENTATION.md) | [📞 Issues](https://github.com/Kuaiswap/AnderTools/issues) | [⭐ Star el Repo](https://github.com/Kuaiswap/AnderTools) |

</div>

---

## 📈 **Changelog**

### **v1.0-CORRECTED** (Actual)
- ✅ Sistema de automatización completo
- ✅ Compatibilidad 100% con Risk
- ✅ Interfaz mejorada con menú de automatización
- ✅ Migración automática desde Risk
- ✅ Logging avanzado
- ✅ Soporte para Android 8.0-14.0+

### **Próximas Versiones**
- 🔄 **v1.1**: Perfiles de optimización personalizables
- 🔄 **v1.2**: Interfaz gráfica opcional
- 🔄 **v1.3**: Integración con Tasker

---

<div align="center">

### 🌟 **¡Apoya el Proyecto!**

Si AnderTools te resulta útil, considera darle una ⭐ al repositorio

[![GitHub stars](https://img.shields.io/github/stars/Kuaiswap/AnderTools?style=social)](https://github.com/Kuaiswap/AnderTools/stargazers)
[![GitHub forks](https://img.shields.io/github/forks/Kuaiswap/AnderTools?style=social)](https://github.com/Kuaiswap/AnderTools/network)

**Desarrollado con ❤️ para la comunidad Android**

---

### 📞 **Contacto y Soporte**

- 🆘 **Problemas urgentes**: [GitHub Issues](https://github.com/Kuaiswap/AnderTools/issues)
- 💡 **Sugerencias**: [Feature Requests](https://github.com/Kuaiswap/AnderTools/issues/new?template=feature_request.md)
- 📖 **Documentación**: [Centro de Documentación](docs/)
- 🤝 **Contribuir**: [Guía de Contribución](CONTRIBUTING.md)

</div>

---

**⚠️ Disclaimer:** AnderTools es software libre y gratuito. Úsalo bajo tu propia responsabilidad. Siempre haz backup de tu dispositivo antes de instalar módulos de root.

**🔒 Seguridad:** Descarga siempre desde este repositorio oficial para garantizar la seguridad y autenticidad del módulo.
