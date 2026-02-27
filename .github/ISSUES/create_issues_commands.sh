#!/usr/bin/env bash
# Script to create the prepared issues with GH CLI.
# Usage: gh auth login && ./create_issues_commands.sh

REPO="KennethAlAr/Proyecto_GlobalFin"

gh issue create --repo "$REPO" --title "Implementar pantalla de bienvenida y registro" --body "Como usuario nuevo, quiero ver una pantalla de bienvenida con opciones 'Iniciar sesión' y 'Crear cuenta'.\n\nCriterios:\n- Botón 'Iniciar sesión' abre login.\n- Botón 'Crear cuenta' abre registro.\n- Solicita permisos iniciales (notifs, ubicación).\n\nNotas técnicas:\n- Usar flutter_secure_storage para tokens.\n- Accesibilidad: labels y contraste."

gh issue create --repo "$REPO" --title "Crear pantalla principal (Dashboard)" --body "Como usuario autenticado, quiero ver un resumen diario con estado de ánimo y pasos.\n\nCriterios:\n- Header con nombre y avatar.\n- Card 'Daily summary' con datos mock.\n- Acciones rápidas visibles.\n\nNotas técnicas:\n- Mockear API GET /dashboard.\n- Implementar BottomNavigationBar con 4 pestañas."

gh issue create --repo "$REPO" --title "Reproductor de sesiones guiadas" --body "Como usuario en sesión guiada, quiero controles de reproducción (play/pause, next) y espacio para notas.\n\nCriterios:\n- Barra de progreso y orden de pasos.\n- Modal de notas editable.\n- Mantener estado al pausar y regresar.\n\nNotas técnicas:\n- Usar video_player o audio; estado con Provider/Riverpod."

gh issue create --repo "$REPO" --title "Perfil y ajustes" --body "Como usuario, quiero ver y modificar preferencias (notifs, tema, idioma) para personalizar la app.\n\nCriterios:\n- Toggles persistentes.\n- 'Cerrar sesión' borra credenciales.\n- Internacionalización considerada.\n\nNotas técnicas:\n- SharedPreferences para prefs; intl para i18n."

gh issue create --repo "$REPO" --title "Configurar CI/CD para Flutter" --body "Crear pipeline que ejecute 'flutter pub get', 'flutter test' y 'flutter analyze' en pushes/PRs a main.\n\nCriterios:\n- Acción GitHub en .github/workflows que pase en CI.\n- Tests básicos y linting configurados."
