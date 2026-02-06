#!/bin/bash

pip install -e .

pip install -r requirements-dev.txt 2>/dev/null || true

echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc

echo 'if [ -f /workspaces/test-goose/.env ]; then set -a; source /workspaces/test-goose/.env; set +a; fi' >> ~/.bashrc

ln -sf /workspaces/test-goose/.goose ~/.config/goose