# Configurar CI/CD para Flutter

Crear pipeline que ejecute `flutter pub get`, `flutter test` y `flutter analyze` en pushes/PRs a `main`.

## Criterios de aceptación
- Acción de GitHub en `.github/workflows` que pase en CI.
- Tests básicos y análisis estático configurados.

## Notas técnicas
- Ya existe `flutter_ci.yml` como punto de partida; revisarlo y ajustarlo si es necesario.
