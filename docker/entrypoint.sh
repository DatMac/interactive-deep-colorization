#!/bin/bash
set -e

# Try to run the colorization application
python ideepcolor_docker.py "$@" || {
  echo "==============================================="
  echo "Application failed to start. Starting bash shell for troubleshooting..."
  echo "==============================================="
  exec /bin/bash
}