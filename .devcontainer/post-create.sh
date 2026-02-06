#!/bin/bash

pip install -e .

echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc

echo 'if [ -f /workspaces/test-goose/.env ]; then set -a; source /workspaces/test-goose/.env; set +a; fi' >> ~/.bashrc

# Remove any existing goose config directory and create symlink to project's .goose
rm -rf ~/.config/goose
ln -sf /workspaces/test-goose/.goose ~/.config/goose

# Populate goose secrets.yaml from environment variables (from --env-file .env)
if [ -n "$GOOGLE_API_KEY" ]; then
    echo "GOOGLE_API_KEY: $GOOGLE_API_KEY" > /workspaces/test-goose/.goose/secrets.yaml
fi

# GEMINI_API_KEY uses the same key as GOOGLE_API_KEY
echo 'export GEMINI_API_KEY=$GOOGLE_API_KEY' >> ~/.bashrc