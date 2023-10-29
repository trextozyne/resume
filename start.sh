#!/usr/bin/env bash
clear;
export NODE_ENV=PROD
until node server/server.bundle.js; do
    echo "Server crashed with exit code $?.  Respawning.." >&2
    sleep 1
done