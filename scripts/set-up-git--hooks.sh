#!/usr/bin/env bash

set -euo pipefail

echo "Configuring repository Git hooks..."

git config core.hooksPath .githooks

chmod +x .githooks/commit-msg
chmod +x scripts/validate-commit-msg.sh

echo "✅ Git hooks configured successfully."
echo
echo "Commit messages must follow Conventional Commits."