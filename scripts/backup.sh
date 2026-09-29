#!/usr/bin/env bash
set -Eeuo pipefail
mkdir -p backups
docker compose exec -T backend bench --site all backup
docker compose cp backend:/home/frappe/frappe-bench/sites/. backups/
echo "Backup generado en backups/ (directorio ignorado por Git)."

