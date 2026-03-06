#!/bin/bash

# Supervisor para mantener a Pep trabajando
# Ejecutar: nohup ./pep_supervisor.sh &

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CHECKER_SCRIPT="$SCRIPT_DIR/pep_email_checker.sh"

echo "[$(date)] Iniciando supervisor de Pep..."

while true; do
    "$CHECKER_SCRIPT"
    # Esperar 2 minutos entre rondas
    sleep 120
done
