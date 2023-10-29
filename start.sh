#!/usr/bin/env bash
clear;
until node server/server.bundle.js; do
    echo "Server crashed with exit code $?.  Respawning.." >&2
    sleep 1
done