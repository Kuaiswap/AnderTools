#!/system/bin/sh

# AnderTools Install Script
# Instalación del módulo de optimización

ui_print "======================================"
ui_print "       AnderTools - Instalación      "
ui_print "======================================"
ui_print "Desarrollado por TreAnder"
ui_print "Canal: https://www.youtube.com/@TreAnder"
ui_print "======================================"

# Configurar permisos
set_perm_recursive $MODPATH 0 0 0755 0644
set_perm $MODPATH/system/bin/andertools 0 0 0755
set_perm $MODPATH/system/bin/automation_daemon 0 0 0755

# Crear directorios necesarios
mkdir -p /sdcard/Android/AnderTools/config
mkdir -p /sdcard/Android/AnderTools/logs

ui_print "✅ Instalación completada"
ui_print "Reinicia el dispositivo para activar"
