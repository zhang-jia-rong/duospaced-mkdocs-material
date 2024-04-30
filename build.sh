#!/bin/bash

# Read the .env file into an associative array
declare -A env_vars
while IFS='=' read -r key value; do
	env_vars[${key}]=${value}
done <.env

# Update the BUILD_DATE and VCS_REF values
env_vars[BUILD_DATE]=$(date -u +'%Y-%m-%dT%H:%M:%SZ')
env_vars[VCS_REF]=$(git rev-parse HEAD)

# Write the updated values back to the .env file
true >.env
for key in "${!env_vars[@]}"; do
	echo "${key}=${env_vars[${key}]}" >>.env
done

# Download and extract the fonts
curl -L -o maple-sc-nf.zip "https://github.com/subframe7536/maple-font/releases/download/v6.4/MapleMono-SC-NF.zip"
unzip maple-sc-nf.zip -d docs/stylesheets
rm maple-sc-nf.zip

curl -L -o maple-woff2.zip "https://github.com/subframe7536/maple-font/releases/download/v6.4/MapleMono-woff2.zip"
unzip maple-woff2.zip -d docs/stylesheets
rm maple-woff2.zip

curl -L -o han-rounded.7z "https://github.com/CyanoHao/Resource-Han-Rounded/releases/download/v0.990/RHR-TTF-0.990.7z"
7z x han-rounded.7z -odocs/stylesheets
rm han-rounded.7z

# Only run docker-compose up --build if not in CI
if [[ $1 != "ci" ]]; then
	docker-compose up --build
fi
