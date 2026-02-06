#!/bin/bash

pip install -e .

echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc

echo 'if [ -f /workspaces/test-goose/.env ]; then set -a; source /workspaces/test-goose/.env; set +a; fi' >> ~/.bashrc

# Remove any existing goose config directory and create symlink to project's .goose
rm -rf ~/.config/goose
ln -sf /workspaces/test-goose/.goose ~/.config/goose

# Export GOOGLE_API_KEY from goose secrets (used by both goose and gemini CLI)
if [ -f /workspaces/test-goose/.goose/secrets.yaml ]; then
    echo 'export GOOGLE_API_KEY=$(grep "GOOGLE_API_KEY:" /workspaces/test-goose/.goose/secrets.yaml | awk "{print \$2}")' >> ~/.bashrc
fi