# Guía de Contribución para AnderTools

¡Gracias por tu interés en contribuir a AnderTools! 

## 🤝 Cómo Contribuir

### Reportar Bugs
1. Verifica que el bug no haya sido reportado anteriormente
2. Crea un nuevo issue con el template de bug report
3. Incluye información detallada del dispositivo y versión de Android
4. Proporciona pasos para reproducir el problema

### Sugerir Mejoras
1. Revisa si la mejora ya fue sugerida
2. Crea un nuevo issue con el template de feature request
3. Explica claramente la funcionalidad propuesta
4. Justifica por qué sería útil para la comunidad

### Contribuir Código
1. Fork el repositorio
2. Crea una nueva rama para tu feature: `git checkout -b feature/nueva-funcionalidad`
3. Realiza tus cambios siguiendo las convenciones del proyecto
4. Prueba tus cambios en diferentes dispositivos si es posible
5. Commit tus cambios: `git commit -m 'Add: nueva funcionalidad'`
6. Push a tu rama: `git push origin feature/nueva-funcionalidad`
7. Crea un Pull Request

## 📋 Estándares de Código

### Shell Scripts
- Usar `#!/bin/bash` o `#!/system/bin/sh` según corresponda
- Comentarios claros para funciones complejas
- Validación de entrada donde sea necesario
- Manejo de errores apropiado

### Documentación
- Documentar nuevas funcionalidades
- Actualizar README si es necesario
- Incluir ejemplos de uso

## 🧪 Testing

- Prueba en diferentes versiones de Android (8.0+)
- Verifica compatibilidad con Magisk y KernelSU
- Documenta cualquier limitación conocida

## 📝 Convenciones de Commit

- `Add:` para nuevas funcionalidades
- `Fix:` para corrección de bugs
- `Update:` para actualizaciones de funcionalidades existentes
- `Docs:` para cambios en documentación
- `Refactor:` para refactorización de código

## 🆘 ¿Necesitas Ayuda?

- Revisa la documentación técnica completa
- Abre un issue con la etiqueta "question"
- Consulta los issues existentes

¡Agradecemos todas las contribuciones, grandes y pequeñas! 🎉
