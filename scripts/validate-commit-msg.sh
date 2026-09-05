#!/usr/bin/env bash

set -euo pipefail

INPUT="${1:-}"

if [[ -z "$INPUT" ]]; then
    echo "Error: No commit message supplied."
    exit 1
fi

# If input is a commit message file, read the first line.
# Otherwise treat the input itself as the commit subject.
if [[ -f "$INPUT" ]]; then
    MESSAGE=$(head -n 1 "$INPUT")
else
    MESSAGE="$INPUT"
fi

CONVENTIONAL_COMMIT_REGEX='^(build|chore|ci|docs|feat|fix|perf|refactor|revert|style|test)(\([[:alnum:]_.\/-]+\))?!?: .+'

if ! printf '%s\n' "$MESSAGE" | grep -Eq "$CONVENTIONAL_COMMIT_REGEX"; then
    echo
    echo "❌ Invalid commit message:"
    echo
    echo "    $MESSAGE"
    echo
    echo "Commit messages must follow Conventional Commits:"
    echo
    echo "    <type>(optional-scope): <description>"
    echo
    echo "Allowed types:"
    echo "    feat"
    echo "    fix"
    echo "    docs"
    echo "    style"
    echo "    refactor"
    echo "    perf"
    echo "    test"
    echo "    build"
    echo "    ci"
    echo "    chore"
    echo "    revert"
    echo
    echo "Examples:"
    echo "    feat: add RDS database"
    echo "    feat(network): add private subnet"
    echo "    fix(terraform): correct security group reference"
    echo "    docs: update architecture documentation"
    echo "    ci: add terraform validation workflow"
    echo "    feat(api)!: change authentication endpoint"
    echo
    exit 1
fi

echo "✅ Conventional Commit validated: $MESSAGE"