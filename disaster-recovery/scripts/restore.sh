#!/bin/bash
set -euo pipefail

if [[ $# -ne 1 || ! -f "$1" ]]; then
    echo "Usage: ./scripts/restore.sh <backup-file>"
    exit 1
fi

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
PROJECT_DIR="$(dirname "$SCRIPT_DIR")"
BACKUP_FILE="$(realpath "$1")"

if [[ -e "$PROJECT_DIR/data" ]]; then
    echo "Data folder already exists."
    echo "Move it aside before restoring."
    exit 1
fi

if ! tar -tzf "$BACKUP_FILE" | grep -q '^data/'; then
    echo "Invalid backup archive."
    exit 1
fi

tar -xzf "$BACKUP_FILE" -C "$PROJECT_DIR"

echo "Data restored successfully!"
