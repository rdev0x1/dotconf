#!/bin/bash

set -e

FISH_CONFIG="$HOME/.config/fish"
FISH_PLUGINS="$FISH_CONFIG/fish_plugins"

# Ensure Fish shell is installed
if ! command -v fish >/dev/null 2>&1; then
  echo "❌ Fish shell is not installed. Please install it first."
  exit 1
fi

# Install Fisher if it's not present
if [ ! -f "$FISH_CONFIG/functions/fisher.fish" ]; then
  echo "🐟 Installing Fisher..."
  curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
fi

# Ensure fish_plugins exists
if [ ! -f "$FISH_PLUGINS" ]; then
  echo "⚠️ No fish_plugins file found! Creating a default one..."
  echo "jorgebucaran/fisher" >"$FISH_PLUGINS"
fi

# Install plugins from fish_plugins
echo "📦 Installing Fish plugins..."
fish -c "fisher install < $FISH_PLUGINS"

# Set Fish as the default shell (optional)
if [ "$(basename -- $SHELL)" != "fish" ]; then
  echo "🔄 Setting Fish as the default shell..."
  chsh -s "$(command -v fish)"
fi

echo "✅ Fish setup complete!"
