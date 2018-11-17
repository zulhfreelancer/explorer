#!/bin/bash

# Init
geth --datadir . --syncmode fast init genesis.json

# CORS - allow explorer on 8000 to talk to Geth on 8545
localhost_ip=$(curl -s api.ipify.org)
full_url="http://$localhost_ip:8000"

# Start
geth \
  --syncmode fast \
  --datadir . \
  --port 30303 \
  --networkid 42 \
  --ipcpath geth.ipc \
  --rpc \
  --rpcport 8545 \
  --rpcaddr 0.0.0.0 \
  --rpccorsdomain $full_url
