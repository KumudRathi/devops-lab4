#!/bin/bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
PROJECT_DIR="$(dirname "$SCRIPT_DIR")"
BACKUP_DIR="$PROJECT_DIR/backups"

mkdir -p "$BACKUP_DIR"

TIMESTAMP=$(date +%Y%m%d_%H%M%S)
BACKUP_FILE="$BACKUP_DIR/disaster-recovery-$TIMESTAMP.tar.gz"

tar -czf "$BACKUP_FILE" -C "$PROJECT_DIR" data

echo "Backup created successfully!"
echo "Backup location: $BACKUP_FILE"
