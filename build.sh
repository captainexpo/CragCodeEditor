#!/usr/bin/env bash
# Build script for the crag_editor example.
set -euo pipefail

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BUILD_DIR="$DIR/build"
REPO_ROOT="$(cd "$DIR/../.." && pwd)"
CRAG="/home/ethroop/Documents/Github/Crag/build/crag"

# if [[ ! -x "$CRAG" ]]; then
#     echo "error: crag compiler not found at $CRAG (build it first)" >&2
#     exit 1
# fi

echo "compiling main.crag..."
echo "$CRAG" "$DIR/main.crag" -o "$BUILD_DIR/editor" -lraylib
CRAGSTD=/home/ethroop/Documents/Github/Crag/stdlib "$CRAG" "$DIR/main.crag" -o "$BUILD_DIR/editor" -lraylib


echo "built $DIR/editor"
