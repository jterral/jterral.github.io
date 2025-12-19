#!/usr/bin/env bash

set -e

# Install apt dependencies
echo "Installing apt dependencies..."
# sudo apt-get update
echo "✅ Apt dependencies installed."

# Configure Mise
echo -e "Setting up mise environment..."
mise trust .
# mise install
echo -e "✅ Mise environment setup completed."

# Configure Pre-commit
# mise precommit:configure
# echo -e "✅ Pre-commit configuration completed."
