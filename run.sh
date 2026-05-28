#!/bin/bash
set -e

# ──────────────────────────────────────────────
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
# ──────────────────────────────────────────────

docker compose up -d --build

echo ""
docker compose ps

echo ""
echo "완료!"
echo "  SFU 로그:   docker compose logs -f sfu"
echo "  TURN 로그:  docker compose logs -f turn"
