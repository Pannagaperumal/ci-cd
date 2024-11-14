#!/bin/bash

CONTAINER_IMAGE_NAME="${CONTAINER_IMAGE_NAME:-your-container-image:latest}"

# Scan the container image
trivy image "$CONTAINER_IMAGE_NAME"

# Scan the container directory
trivy fs your-container-directory

# Scan the container image for OS vulnerabilities
trivy image --security-checks vuln "$CONTAINER_IMAGE_NAME"

# Scan the container image for sensitive data
trivy image --security-checks secret "$CONTAINER_IMAGE_NAME"
