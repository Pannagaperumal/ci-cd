#!/bin/bash

# Scan a container image
trivy image your-container-image:latest

# Scan a container directory
trivy fs your-container-directory

# Scan a container image for OS vulnerabilities
trivy image --security-checks vuln your-container-image:latest

# Scan a container image for sensitive data
trivy image --security-checks secret your-container-image:latest
