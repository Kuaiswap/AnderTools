#!/system/bin/sh

# AnderTools Service Script
# Ejecutado en cada arranque del sistema

MODDIR=${0%/*}

# Iniciar servicio de automatización si existe
if [ -f "$MODDIR/system/bin/automation_daemon" ]; then
    $MODDIR/system/bin/automation_daemon &
fi

# Log de inicio
echo "$(date): AnderTools service iniciado" >> /sdcard/Android/AnderTools/logs/service.log
