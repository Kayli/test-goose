FROM mcr.microsoft.com/devcontainers/python:3.11

# Install additional tools useful for AI agent development
RUN apt-get update && apt-get install -y --no-install-recommends \
    git \
    curl \
    wget \
    jq \
    && rm -rf /var/lib/apt/lists/*

# Create a non-root user for development (already created in base image as 'vscode')
# Set up Python environment
RUN python -m pip install --upgrade pip setuptools wheel && \
    pip install goose-ai
