#!/usr/bin/env bash

set -euxo pipefail

TAP_NAME="${TAP_NAME:-local/mavenagi-tap}"
TOKEN_REFERENCE="${TOKEN_REFERENCE:-op://MAGI_CLI/HOMEBREW/GITHUB_ACCESS_TOKEN}"
export HOMEBREW_NO_AUTO_UPDATE="${HOMEBREW_NO_AUTO_UPDATE:-1}"
export HOMEBREW_NO_INSTALL_FROM_API="${HOMEBREW_NO_INSTALL_FROM_API:-1}"

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

set +x
export HOMEBREW_GITHUB_ACCESS_TOKEN
HOMEBREW_GITHUB_ACCESS_TOKEN="$(op read "$TOKEN_REFERENCE" --account mavenagi)"
set -x

echo "Using tap: $TAP_NAME"
echo "Using token reference: $TOKEN_REFERENCE"

brew untap "$TAP_NAME" 2>/dev/null || true
brew tap --custom-remote "$TAP_NAME" "file://$(pwd)"

rm -f "$(brew --cache)/downloads/"*magi* 2>/dev/null || true

brew fetch --verbose "$TAP_NAME/magi"
if brew list --versions "$TAP_NAME/magi" >/dev/null 2>&1; then
  echo "magi already installed; skipping install and continuing to runtime checks."
else
  brew install --ignore-dependencies --verbose "$TAP_NAME/magi"
fi

MAGI_PREFIX="$(brew --prefix "$TAP_NAME/magi")"
"$MAGI_PREFIX/bin/magi" --help
