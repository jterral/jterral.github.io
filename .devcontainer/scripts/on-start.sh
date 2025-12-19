#!/usr/bin/env bash
set -e

echo -e "🚀 Starting devcontainer setup script..."

echo "GITHUB_TOKEN=${GITHUB_TOKEN:-<empty>}"
mise install

echo -e "✅ Devcontainer setup script completed."
