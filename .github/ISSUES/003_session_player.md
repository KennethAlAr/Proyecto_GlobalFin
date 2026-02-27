# Reproductor de sesiones guiadas

**Como** usuario en una sesión guiada
**Quiero** controles de reproducción (play/pause, next) y espacio para notas
**Para que** pueda seguir el contenido sin distracciones

## Criterios de aceptación
- Existe un orden de pasos y la barra de progreso refleja la posición.
- Al presionar "Notas" se abre un modal editable.
- La UI reacciona a pantalla completa y rotación (landscape).
- Si la sesión se pausa, se mantiene el estado al volver a la app.

## Notas técnicas
- Utilizar el paquete `video_player` o audio según el tipo de sesión.
- Estado de reproducción manejado con `Provider` o `Riverpod`.
