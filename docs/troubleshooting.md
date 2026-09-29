# Troubleshooting

- Contenedor caído: `docker compose ps`, luego `docker compose logs --tail=200 <servicio>`.
- ERPNext no responde: verifica `frontend`, `backend`, el puerto publicado y `./scripts/health-check.sh`.
- Redis no disponible: `docker compose ps redis-cache redis-queue`; prueba resolución con `docker compose exec backend getent hosts redis-queue`.
- Error de base de datos: revisa `docker compose logs db`, health check y `DB_PASSWORD`; no cambies datos a ciegas.
- Worker detenido: revisa `queue-short`/`queue-long` y su comando `bench worker`.
- Scheduler detenido: revisa logs de `scheduler` y la configuración del sitio.
- Permisos: inspecciona propietario dentro de `sites`; evita `chmod -R 777`.
- Logs: usa `./scripts/logs.sh [servicio]` y limita el volumen con `--tail`.
- Disco: `df -h`; Docker: `docker system df`.
- Memoria: `free -h` en Linux o recursos de Docker Desktop en macOS; `docker stats`.
- Puertos: `docker compose port frontend 8080` y `lsof -nP -iTCP:8080 -sTCP:LISTEN`.

