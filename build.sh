#!/bin/bash

# Read the .env file into an associative array
declare -A env_vars
while IFS='=' read -r key value; do
	env_vars[$key]=$value
done <.env

# Update the BUILD_DATE and VCS_REF values
env_vars[BUILD_DATE]=$(date -u +'%Y-%m-%dT%H:%M:%SZ')
env_vars[VCS_REF]=$(git rev-parse HEAD)

# Write the updated values back to the .env file
>.env
for key in "${!env_vars[@]}"; do
	echo "$key=${env_vars[$key]}" >>.env
done

# Only run docker-compose up --build if not in CI
if [ "$1" != "ci" ]; then
	docker-compose up --build
fi
