#!/bin/bash

# Get the latest Git commit hash
VCS_REF=$(git rev-parse HEAD)

# Set VERSION to the value of VCS_REF
export VERSION=$VCS_REF

# Append the current Unix timestamp to VCS_REF
export VCS_REF=$VCS_REF-$(date +%s)

# Set BUILD_DATE to the current date and time in UTC
export BUILD_DATE=$(date -u +'%Y-%m-%dT%H:%M:%SZ')

# Run docker-compose up --build with the debug Docker Compose file
docker-compose -f docker-compose.debug.yml up --build
