FROM mcr.microsoft.com/devcontainers/python:3.11

# Install additional tools useful for AI agent development
RUN apt-get update && apt-get install -y --no-install-recommends \
    git \
    curl \
    wget \
    jq \
    && rm -rf /var/lib/apt/lists/*

# Install Node.js and npm
RUN curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && \
    apt-get install -y nodejs && \
    rm -rf /var/lib/apt/lists/*

# Create a non-root user for development (already created in base image as 'vscode')
# Set up Python environment
RUN python -m pip install --upgrade pip setuptools wheel

# Install goose for vscode user
RUN mkdir -p /home/vscode/.local/bin && \
    curl -fsSL https://github.com/block/goose/releases/download/stable/download_cli.sh | GOOSE_BIN_DIR=/home/vscode/.local/bin CONFIGURE=false bash && \
    chown -R vscode:vscode /home/vscode/.local && \
    /home/vscode/.local/bin/goose --version

# Install Gemini CLI via npm (requires Node.js from base image)
RUN npm install -g @google/gemini-cli && \
    gemini --version

USER vscode
ENV PATH="/home/vscode/.local/bin:$PATH"