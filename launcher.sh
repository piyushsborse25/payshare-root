#!/bin/sh
set -e

CLUSTER_NAME="pay-share"

log() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') [LAUNCHER] $1"
}

log "Starting Payshare stack with project name '${CLUSTER_NAME}'..."

# Run docker-compose using your billstack-compose.yml
docker compose -f billstack-compose.yml -p $CLUSTER_NAME up -d

log "All services launched successfully under stack name '${CLUSTER_NAME}'!"