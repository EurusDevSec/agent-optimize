#!/usr/bin/env bash
# Eurus Agent 1-Line Installer for Linux/macOS
REPO_URL="https://github.com/EurusDevSec/eurus-agent.git"
TEMP_DIR="temp_eurus_installer"

echo "💨 Installing eurus-agent v2.3 into current project..."

rm -rf "$TEMP_DIR"
git clone --depth 1 "$REPO_URL" "$TEMP_DIR"

if [ -d "$TEMP_DIR/.agent" ]; then
    mkdir -p .agent
    cp -r "$TEMP_DIR/.agent/"* .agent/
    cp "$TEMP_DIR/AGENTS.md" AGENTS.md
    if [ -f "$TEMP_DIR/.mcp.json" ]; then cp "$TEMP_DIR/.mcp.json" .mcp.json; fi
    rm -rf "$TEMP_DIR"
    echo "✅ SUCCESS: eurus-agent v2.3 successfully installed! Run '/init' in your AI CLI to start."
else
    echo "❌ ERROR: Failed to clone eurus-agent repository."
fi
