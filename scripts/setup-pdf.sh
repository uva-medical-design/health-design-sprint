#!/usr/bin/env bash
set -euo pipefail

echo "=== PDF toolchain setup ==="

# Check / install pango via Homebrew
if brew list pango &>/dev/null; then
  echo "✓ pango already installed"
else
  echo "Installing pango via Homebrew..."
  brew install pango
fi

# Check / install weasyprint via pip
if python3 -c "import weasyprint" &>/dev/null; then
  echo "✓ weasyprint already installed"
else
  echo "Installing weasyprint via pip..."
  pip3 install weasyprint
fi

echo "=== PDF toolchain ready ==="
