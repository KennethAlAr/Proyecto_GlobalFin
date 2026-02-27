# Historias de Usuario – Sprint 1 (Aura Wellness)

Este documento recoge las historias de usuario preliminares derivadas de los wireframes actuales. Se puede usar como base para Jira, GitHub Issues, etc.

## Estructura de cada historia

- **Como** [tipo de usuario]
- **Quiero** [acción o funcionalidad]
- **Para que** [beneficio o valor]
- **Criterios de aceptación** (min 3-5) enumerados
- **Notas/Tareas técnicas** opcionales

## 1. Onboarding y autenticación

- **Como** usuario nuevo
- **Quiero** ver una pantalla de bienvenida con opciones "Iniciar sesión" y "Crear cuenta"
- **Para que** pueda acceder/registrarme en la aplicación fácilmente

### Criterios de aceptación
1. El botón "Iniciar sesión" abre el formulario de login.
2. El botón "Crear cuenta" abre el formulario de registro.
3. En la primera ejecución, la aplicación muestra permisos (notificaciones, ubicación) y un enlace a Términos.
4. Todos los textos respetan el idioma del dispositivo.

### Notas técnicas
- Usar `flutter_secure_storage` para guardar token.
- La pantalla debe ser accesible (contraste, labels para botones).

## 2. Pantalla de inicio

- **Como** usuario autenticado
- **Quiero** ver un resumen diario con mi estado de ánimo y pasos
- **Para que** tenga una visión rápida de mi progreso

### Criterios de aceptación
1. El header muestra el nombre del usuario y su avatar.
2. El "Daily summary" actualiza con datos simulados en modo demo.
3. Las acciones rápidas (iniciar sesión, registrar comida, chatear) son botones visibles.
4. La navegación inferior permite moverme a otras secciones.

### Notas técnicas
- Mockear API de `GET /dashboard` inicial.
- Implementar `BottomNavigationBar` con 4 pestañas.

## 3. Reproducción de sesión

- **Como** usuario en una sesión guiada
- **Quiero** controles de reproducción (play/pause, next) y espacio para notas
- **Para que** pueda seguir el contenido sin distracciones

### Criterios de aceptación
1. Existe un orden de pasos y la barra de progreso refleja la posición.
2. Al presionar "Notas" se abre un modal editable.
3. La UI reacciona a pantalla completa y rotación (landscape).
4. Si la sesión se pausa, se mantiene el estado al volver a la app.

### Notas técnicas
- Utilizar el paquete `video_player` o audio según el tipo de sesión.
- Estado de reproducción manejado con `Provider` o `Riverpod`.

## 4. Perfil y ajustes

- **Como** usuario
- **Quiero** ver y modificar mis preferencias (notificaciones, tema, idioma)
- **Para que** pueda personalizar la app a mis necesidades

### Criterios de aceptación
1. Los toggles cambian el estado global y se persisten.
2. El botón "Cerrar sesión" borra credenciales y vuelve al login.
3. El nombre y correo se muestran correctamente desde el perfil.
4. Se respeta la navegación de regreso.

### Notas técnicas
- Guardar preferencias en `SharedPreferences`.
- Considerar internacionalización (`intl` package).

---

Estas historias forman la base para el backlog del sprint; pueden subdividirse en tareas más pequeñas (por ejemplo, "Implementar formulario de login" o "Crear componente de avatar").
