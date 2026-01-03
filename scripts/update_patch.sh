#!/bin/bash
# Security Patching Script
# This ensures the server always has the latest security updates.

echo "------------------------------------------"
echo "Starting Security Update: $(date)"
echo "------------------------------------------"

# Update package lists
sudo apt-get update -y

# Install only security updates
sudo apt-get upgrade -y

# Remove old, unused software to reduce attack surface
sudo apt-get autoremove -y
sudo apt-get autoclean -y

echo "------------------------------------------"
echo "Update Complete: $(date)"
echo "------------------------------------------"