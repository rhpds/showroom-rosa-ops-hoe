#!/usr/bin/env bash
#

echo "Starting build process..."
podman run --rm --platform linux/amd64 -v "./:/antora:Z" docker.io/antora/antora site.yml
echo "Build process complete. Check the ./www folder for the generated site."

podman run --rm --platform linux/amd64 -v /opt/showroom/content:/antora:Z docker.io/antora/antora site.yml