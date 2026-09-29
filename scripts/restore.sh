#!/usr/bin/env bash
set -Eeuo pipefail
site="${1:-}"
file="${2:-}"
[[ -n "$site" && -n "$file" && -f "$file" ]] || { echo "Uso: $0 <site-name> backups/archivo.sql.gz" >&2; exit 2; }
[[ "${CONFIRM_RESTORE:-}" == "YES" ]] || { echo "Operación protegida: ejecuta CONFIRM_RESTORE=YES $0 <archivo>" >&2; exit 2; }
docker compose ps --status running backend >/dev/null
docker compose cp "$file" "backend:/tmp/$(basename "$file")"
docker compose exec -T backend bench --site "$site" restore "/tmp/$(basename "$file")" --force
echo "Restauración completada para $site. Verifica migraciones, archivos y salud de la aplicación."
