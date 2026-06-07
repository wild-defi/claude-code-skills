#!/bin/bash
# Weekly Improvement — gathers session analytics + reflections, then drafts an improvement plan.
# Output: captures/processed/weekly-improvement-YYYY-MM-DD.md
#
# This is a TEMPLATE. It calls `claude -p` headlessly. Adjust the data sources (and any
# notification step) to your own setup before relying on it. Invoked via /weekly-improvement.

set -e

PROJECT_DIR="${CLAUDE_PROJECT_DIR:-$(pwd)}"
DATE=$(date +%Y-%m-%d)
OUTPUT_FILE="$PROJECT_DIR/captures/processed/weekly-improvement-$DATE.md"

cd "$PROJECT_DIR"
mkdir -p "$PROJECT_DIR/captures/processed"

echo "=== Step 1/2: Gather reflections (dry run) ==="
# If you use the claude-reflect plugin, this surfaces detected corrections without applying them.
claude -p "/claude-reflect:reflect --dry-run" --output-format text > /tmp/weekly-reflect-output.txt 2>&1 || \
  echo "WARNING: reflect step skipped/failed — continuing"

echo "=== Step 2/2: Generate improvement plan ==="
claude -p "$(cat <<'PROMPT'
You are a weekly improvement agent. Analyze the available data and propose a concrete plan.

## Sources
1. Detected corrections: read /tmp/weekly-reflect-output.txt
2. Current state: read goals/weekly.md, goals/monthly.md, and the last few captures/processed/ notes

## Output
Write a short improvement plan with, at most, the 3 highest-leverage changes. For each:
- What to change
- Why (evidence from the sources)
- The single next action

Keep it concrete and small. No filler.
PROMPT
)" --output-format text > "$OUTPUT_FILE" 2>&1

echo "✅ Done → $OUTPUT_FILE"
