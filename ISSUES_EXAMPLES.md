# Ejemplos de Issues para el backlog

Puedes copiar y pegar estas entradas en GitHub (o cualquier otra herramienta de gestión) para arrancar el sprint.

---

### Issue: Implementar pantalla de bienvenida y registro
**Como** usuario nuevo
**Quiero** ver una pantalla de bienvenida con opciones "Iniciar sesión" y "Crear cuenta" para que pueda acceder o registrarme en la aplicación fácilmente.

Criterios de aceptación:
- El botón "Iniciar sesión" abre el formulario de login.
- El botón "Crear cuenta" abre el formulario de registro.
- En la primera ejecución, la aplicación muestra permisos (notificaciones, ubicación) y un enlace a Términos.
- Todos los textos respetan el idioma del dispositivo.

Notas técnicas:
- Usar `flutter_secure_storage` para guardar token.
- La pantalla debe ser accesible (contraste, labels para botones).

---

### Issue: Crear pantalla principal (Dashboard)
**Como** usuario autenticado
**Quiero** ver un resumen diario con mi estado de ánimo y pasos para que tenga una visión rápida de mi progreso.

Criterios de aceptación:
- El header muestra el nombre del usuario y su avatar.
- El "Daily summary" actualiza con datos simulados en modo demo.
- Las acciones rápidas son botones visibles.
- La navegación inferior permite moverme a otras secciones.

Notas técnicas:
- Mockear API de `GET /dashboard` inicial.
- Implementar `BottomNavigationBar` con 4 pestañas.

---

### Issue: Reproductor de sesiones guiadas
**Como** usuario en una sesión guiada
**Quiero** controles de reproducción (play/pause, next) y espacio para notas para que pueda seguir el contenido sin distracciones.

Criterios de aceptación:
- Existe un orden de pasos y la barra de progreso refleja la posición.
- Al presionar "Notas" se abre un modal editable.
- La UI reacciona a pantalla completa y rotación (landscape).
- Si la sesión se pausa, se mantiene el estado al volver a la app.

Notas técnicas:
- Utilizar el paquete `video_player` o audio según el tipo de sesión.
- Estado de reproducción manejado con `Provider` o `Riverpod`.

---

### Issue: Perfil y ajustes
en aplicaciones
**Como** usuario
**Quiero** ver y modificar mis preferencias (notificaciones, tema, idioma) para que pueda personalizar la app a mis necesidades.

Criterios de aceptación:
- Los toggles cambian el estado global y se persisten.
- El botón "Cerrar sesión" borra credenciales y vuelve al login.
- El nombre y correo se muestran correctamente desde el perfil.
- Se respeta la navegación de regreso.

Notas técnicas:
- Guardar preferencias en `SharedPreferences`.
- Considerar internacionalización (`intl` package).
