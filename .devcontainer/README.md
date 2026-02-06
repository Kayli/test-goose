# Devcontainer Setup

This project uses a devcontainer to provide an isolated development environment for the Goose OSS AI agent playground.

## Quick Start

1. **Open in Container** (VS Code):
   - Install the "Dev Containers" extension (ms-vscode-remote.remote-containers)
   - Open the project in VS Code
   - Click the green button in the bottom-left corner
   - Select "Reopen in Container"

2. **Using Docker CLI**:
   ```bash
   docker build -f .devcontainer/Dockerfile -t goose-playground .
   docker run -it -v $(pwd):/workspaces/test-goose goose-playground
   ```

## What's Included

- **Python 3.11** - Base Python environment
- **Git & GitHub CLI** - Version control and GitHub integration
- **Development Tools** - Useful utilities for development
- **VS Code Extensions** - Python, Pylance, Debugpy, Makefile Tools

## Benefits

- ✅ Isolated environment - keeps your host system clean
- ✅ Consistent development setup - same environment for all developers
- ✅ Easy dependency management - all packages installed in container
- ✅ Safe experimentation - can safely test anything without affecting host

## Notes

- Your home directory is mounted at `/home/vscode/host` inside the container
- The workspace is mounted at `/workspaces/test-goose`
- Use `vscode` as the non-root user inside the container
