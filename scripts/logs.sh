#!/usr/bin/env bash
set -Eeuo pipefail
service="${1:-frontend}"
docker compose logs --tail=200 -f "$service"

