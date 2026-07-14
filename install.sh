#!/bin/sh
set -eu

SCRIPT_DIR=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
SOURCE_DIR="$SCRIPT_DIR/pet/bumblebee"
TARGET_DIR="${CODEX_HOME:-$HOME/.codex}/pets/bumblebee"

if [ ! -f "$SOURCE_DIR/pet.json" ] || [ ! -f "$SOURCE_DIR/spritesheet.webp" ]; then
  echo "Bumblebee pet files are missing." >&2
  exit 1
fi

mkdir -p "$TARGET_DIR"
cp "$SOURCE_DIR/pet.json" "$TARGET_DIR/pet.json"
cp "$SOURCE_DIR/spritesheet.webp" "$TARGET_DIR/spritesheet.webp"

echo "Installed 大黄蜂 to $TARGET_DIR"
echo "Restart Codex, then select 大黄蜂 from the pets menu."
