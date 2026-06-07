#!/bin/bash
# Capture session hook — fires on every Stop event.
# Reads the full conversation JSON from stdin, saves it to captures/raw/<session-id>.json
#
# Wire it up in .claude/settings.json under hooks.Stop (see captures/README.md).

INPUT=$(cat)

SESSION_ID=$(echo "$INPUT" | python3 -c "import sys,json; d=json.load(sys.stdin); print(d.get('session_id','unknown'))" 2>/dev/null)

if [ -z "$SESSION_ID" ] || [ "$SESSION_ID" = "unknown" ]; then
  exit 0
fi

# CLAUDE_PROJECT_DIR is set by Claude Code; fall back to the current directory.
PROJECT_DIR="${CLAUDE_PROJECT_DIR:-$(pwd)}"
CAPTURES_DIR="$PROJECT_DIR/captures/raw"
mkdir -p "$CAPTURES_DIR"

echo "$INPUT" > "$CAPTURES_DIR/$SESSION_ID.json"
