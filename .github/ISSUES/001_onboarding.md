# Implementar pantalla de bienvenida y registro

**Como** usuario nuevo
**Quiero** ver una pantalla de bienvenida con opciones "Iniciar sesión" y "Crear cuenta" para que pueda acceder o registrarme en la aplicación fácilmente.

## Criterios de aceptación
- El botón "Iniciar sesión" abre el formulario de login.
- El botón "Crear cuenta" abre el formulario de registro.
- En la primera ejecución, la aplicación muestra permisos (notificaciones, ubicación) y un enlace a Términos.
- Todos los textos respetan el idioma del dispositivo.

## Notas técnicas
- Usar `flutter_secure_storage` para guardar token.
- La pantalla debe ser accesible (contraste, labels para botones).
