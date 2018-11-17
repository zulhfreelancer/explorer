#!/bin/bash

# Init
geth --datadir . --syncmode fast init genesis.json

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
  --rpccorsdomain "http://localhost:8000"
