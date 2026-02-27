# Proyecto Aura Wellness (mobile)

Este repositorio sirve como contenedor de los diferentes componentes del proyecto Aura Wellness.  En esta rama inicial hemos comenzado con la aplicación móvil Flutter.

## Estructura

- `mobile/` – código fuente de la app Flutter.
- `design/` – wireframes, prototipos y documentos UX.
- `.github/workflows/flutter_ci.yml` – pipeline de CI para tests y análisis.

## Primeros pasos

1. Instalar Flutter SDK (`https://flutter.dev/docs/get-started/install`).
2. Abrir `mobile/` en tu IDE y ejecutar:
	```bash
	flutter pub get
	flutter test
	```
3. Usa `ISSUES_EXAMPLES.md` como referencia para poblar tu backlog.

## CI/CD

La acción de GitHub (`flutter_ci.yml`) se activa en pushes y PRs contra `main`. Ejecuta `flutter pub get`, corre test unitarios y análisis estático.

## Backlog y documentación

Consulta `TODO.md` para el plan del sprint, `design/` para wireframes y `design/user_stories.md` para historias de usuario.

---
¡Bienvenido a la creación de Aura Wellness!  Siéntete libre de añadir carpetas o componentes adicionales según evolucione el proyecto.

