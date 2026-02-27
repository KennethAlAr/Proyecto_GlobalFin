# Perfil y ajustes

**Como** usuario
**Quiero** ver y modificar mis preferencias (notificaciones, tema, idioma)
**Para que** pueda personalizar la app a mis necesidades

## Criterios de aceptación
- Los toggles cambian el estado global y se persisten.
- El botón "Cerrar sesión" borra credenciales y vuelve al login.
- El nombre y correo se muestran correctamente desde el perfil.
- Se respeta la navegación de regreso.

## Notas técnicas
- Guardar preferencias en `SharedPreferences`.
- Considerar internacionalización (`intl` package).
