#!/bin/bash
export EXTERNAL_IP=$(curl -s api.ipify.org)
exec docker-compose $@
