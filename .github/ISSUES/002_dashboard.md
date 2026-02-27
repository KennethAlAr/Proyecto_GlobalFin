# Crear pantalla principal (Dashboard)

**Como** usuario autenticado
**Quiero** ver un resumen diario con mi estado de ánimo y pasos
**Para que** tenga una visión rápida de mi progreso

## Criterios de aceptación
- El header muestra el nombre del usuario y su avatar.
- El "Daily summary" actualiza con datos simulados en modo demo.
- Las acciones rápidas (iniciar sesión, registrar comida, chatear) son botones visibles.
- La navegación inferior permite moverme a otras secciones.

## Notas técnicas
- Mockear API de `GET /dashboard` inicial.
- Implementar `BottomNavigationBar` con 4 pestañas.
