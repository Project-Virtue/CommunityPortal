#!/bin/bash

readonly _REQUIRED_ON_PATH="docker docker-compose"

# Validate required binaries are installed
for bin in ${_REQUIRED_ON_PATH}; do
  echo "Validating ${bin} is installed..."
  if ! command -v ${bin} ; then
    echo "[ERROR] - Binary not found: ${bin}"
    exit 255
  fi

  echo "OK"
done
