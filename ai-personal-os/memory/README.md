# Living Memory

A file-based memory with telemetry. Each memory is one fact in one `.md` file. High-heat memories
stay in context; cold ones fade and get archived. This keeps the always-loaded context small while
preserving what matters.

> **Where memory actually lives:** Claude Code's per-project memory directory is
> `~/.claude/projects/<your-project-dir>/memory/`. This folder in the repo is the **template +
> documentation**. Point the `/memory-consolidate` command at your real memory dir.

## Files

```
memory/
├── README.md          # this file
├── MEMORY.md          # the index loaded into context each session (one line per memory)
└── telemetry/
    ├── access-log.jsonl   # append-only log of memory events
    └── state.json         # consolidation state + heat cache
```

## Memory file format

```markdown
---
name: <short-kebab-case-slug>
description: <one-line summary — used to decide relevance during recall>
heat: <0-10>
protected: <true|false>
metadata:
  type: user | feedback | project | reference
---

<the fact. For feedback/project, follow with **Why:** and **How to apply:** lines.>
```

Types: `user` (who you are) · `feedback` (how the agent should work, with the why) ·
`project` (ongoing work not derivable from code) · `reference` (pointers to external resources).

## Telemetry — when to log (only rare, high-signal events)

| Event | Meaning |
|-------|---------|
| `memory_used` | a memory helped in the conversation |
| `memory_stale` | a memory was outdated |
| `memory_missing` | needed knowledge wasn't in memory |
| `behavior_prevented_error` | a behavioral memory prevented a mistake |

Don't log routine loads — only meaningful events.

Log line format:
```json
{"ts": "YYYY-MM-DDTHH:MM:SSZ", "event": "memory_used", "file": "feedback_x.md", "description": "..."}
```

## Heat scale (0–10)

- 0–2: cold → archive candidate
- 3–6: warm → stays in the index
- 7–10: hot → always in context
- `protected: true` → never decays

## Consolidation

Run `/memory-consolidate` weekly (e.g. during `/weekly-review`): it reads the telemetry log,
updates heat scores, archives cold memories, and rewrites the hot section of `MEMORY.md`.
