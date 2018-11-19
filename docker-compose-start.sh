#!/bin/bash

# Remove previous containers
docker-compose down

# Execute `docker-compose`, accept sub-commands and arguments from caller
export EXTERNAL_IP=$(curl -s api.ipify.org)
exec docker-compose $@
