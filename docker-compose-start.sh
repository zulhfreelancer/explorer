#!/bin/bash

# Remove previous containers
docker-compose down

# Start fresh
rm -rf \
    docker-geth/ethereum/geth \
    docker-geth/ethereum/keystore \
    docker-geth/ethereum/geth.ipc

# Execute `docker-compose`, accept sub-commands and arguments from caller
export EXTERNAL_IP=$(curl -s api.ipify.org)
exec docker-compose $@
