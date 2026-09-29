# Despliegue

1. Requiere Docker Engine/Desktop y Compose v2.
2. Copia `.env.example` a `.env`; usa valores locales, nunca los publiques.
3. Ejecuta `docker compose config` para validar interpolación.
4. Ejecuta `docker compose pull` y `docker compose up -d`.
5. Revisa `docker compose ps` y `./scripts/health-check.sh`.

Para actualizar, fija una versión conocida en `.env`, descarga imágenes, recrea con `docker compose up -d` y valida. Conserva un backup previo.

