#!/usr/bin/env bash

set -euo pipefail

# Install apt dependencies
echo "📦 Installing apt dependencies..."
# sudo apt-get update
echo "🟢 Apt dependencies installed."

# Configure Git
echo "🔧 Checking Git..."
echo "🔑 GITHUB_TOKEN=${GITHUB_TOKEN:-<empty>}"
echo "🟢 Git configured."

# Configure Mise
echo "⚙️ Setting up mise environment..."
mise trust .
mise install
echo "eval \"\$(mise activate bash)\"" >> ~/.bashrc
echo "🟢 Mise environment setup completed."

# Configure Pre-commit
mise precommit:configure
echo "🟢 Pre-commit hooks configured."

echo "✅ Devcontainer setup script completed."
