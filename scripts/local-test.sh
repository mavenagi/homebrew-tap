#!/usr/bin/env bash

set -euo pipefail

TAP_NAME="${TAP_NAME:-local/mavenagi-tap}"
TOKEN_REFERENCE="${TOKEN_REFERENCE:-op://MAGI_CLI/HOMEBREW/GITHUB_ACCESS_TOKEN}"

if [[ ! -f "Formula/magi.rb" ]]; then
  echo "Run this script from the homebrew-tap repo root."
  exit 1
fi

if ! command -v brew >/dev/null 2>&1; then
  echo "Homebrew is required."
  exit 1
fi

if ! command -v op >/dev/null 2>&1; then
  echo "1Password CLI is required."
  exit 1
fi

export HOMEBREW_GITHUB_ACCESS_TOKEN
HOMEBREW_GITHUB_ACCESS_TOKEN="$(op read "$TOKEN_REFERENCE" --account mavenagi)"

echo "Using tap: $TAP_NAME"
echo "Using token reference: $TOKEN_REFERENCE"

brew untap "$TAP_NAME" 2>/dev/null || true
brew tap --custom-remote "$TAP_NAME" "file://$(pwd)"

HOMEBREW_NO_INSTALL_FROM_API=1 brew uninstall --force "$TAP_NAME/magi" 2>/dev/null || true
rm -f "$(brew --cache)/downloads/"*magi* 2>/dev/null || true

HOMEBREW_NO_INSTALL_FROM_API=1 brew fetch --verbose "$TAP_NAME/magi"
HOMEBREW_NO_INSTALL_FROM_API=1 brew install --verbose "$TAP_NAME/magi"

brew test "$TAP_NAME/magi"
magi --help
