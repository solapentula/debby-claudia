#!/usr/bin/env bash
# Optional helper: install the kepano Obsidian authoring skills into this vault's
# .claude/skills/ folder. Safe to re-run.
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
DEST="$ROOT/.claude/skills"
TMP="$(mktemp -d)"
echo "Cloning kepano/obsidian-skills..."
git clone --depth 1 https://github.com/kepano/obsidian-skills.git "$TMP/kep"
mkdir -p "$DEST"
for s in obsidian-markdown obsidian-bases json-canvas obsidian-cli defuddle; do
  cp -r "$TMP/kep/skills/$s" "$DEST/"
  echo "  installed $s"
done
rm -rf "$TMP"
echo "Done. Skills are in $DEST"
echo "Note: kepano/obsidian-skills is MIT-licensed by @kepano."
