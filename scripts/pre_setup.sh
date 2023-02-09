#!/bin/bash

set -a
[ -f .env ] && . .env

# Setup app .env file
cp .env.example .env

# Build app api image
docker build -f Dockerfile -t app/api:latest .
