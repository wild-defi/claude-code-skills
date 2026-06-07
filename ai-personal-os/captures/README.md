# Captures

Raw session capture + distillation into content material.

```
captures/
├── raw/         # One JSON per finished session (written by the capture hook)
└── processed/   # Distilled material + post recommendations (by /process-captures)
```

## How it works

1. The `capture-session` hook (see `.claude/hooks/capture-session.sh`) fires on every session
   Stop event and saves the full conversation to `captures/raw/<session-id>.json`.
2. `/process-captures` reads the raw sessions, extracts what's interesting for an audience, and
   writes `processed/YYYY-MM-DD.md` with post recommendations.

## Privacy

`captures/raw/` contains full conversation transcripts — **personal data**. It is gitignored.
Only the distilled, sanitized `processed/` notes are meant to leave your machine, and only after
you review them.

## Enabling the hook

Add to `.claude/settings.json`:

```json
{
  "hooks": {
    "Stop": [
      { "hooks": [{ "type": "command", "command": "bash .claude/hooks/capture-session.sh" }] }
    ]
  }
}
```
