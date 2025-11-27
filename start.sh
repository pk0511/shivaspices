#!/usr/bin/env bash
set -euo pipefail

# start.sh — starts the project site using Python's built-in static server
# Usage:
#   ./start.sh        # start in foreground (Ctrl+C to stop)
#   ./start.sh -d     # start in background (outputs PID and log path)

PORT=8000
BIND=127.0.0.1
LOG=/tmp/shivaspices-server.log

function start_fg() {
  echo "Starting server in foreground on http://${BIND}:${PORT} — press Ctrl+C to stop"
  python3 -m http.server ${PORT} --bind ${BIND}
}

function start_bg() {
  nohup python3 -m http.server ${PORT} --bind ${BIND} > ${LOG} 2>&1 &
  PID=$!
  echo "Started in background (PID=${PID}), logs: ${LOG}"
}

if [[ ${1-} == "-d" || ${1-} == "--detach" ]]; then
  start_bg
else
  start_fg
fi
