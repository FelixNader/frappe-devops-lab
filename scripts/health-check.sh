#!/usr/bin/env bash
set -Eeuo pipefail
docker compose ps --status running
docker compose exec -T db healthcheck.sh --connect --innodb_initialized
curl --fail --silent --show-error "http://127.0.0.1:${HTTP_PUBLISH_PORT:-8080}" >/dev/null
echo "health checks: OK"

