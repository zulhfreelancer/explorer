#!/bin/bash

# Init
geth --datadir . --syncmode light init genesis.json

# Start
geth \
  --syncmode light \
  --datadir . \
  --port 30303 \
  --networkid 42 \
  --ipcpath geth.ipc \
  --rpc \
  --rpcport 8545 \
  --rpcaddr 0.0.0.0 \
  --rpccorsdomain "http://localhost:8000"
