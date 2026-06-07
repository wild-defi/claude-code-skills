# Memory Consolidate — Living Memory

Weekly memory consolidation. Reads the telemetry log, updates heat scores, archives cold memories.

> Paths below assume memory lives at `~/.claude/projects/<your-project-dir>/memory/`.
> Replace `<your-project-dir>` with your actual project directory. See `memory/README.md`.

## Steps

### 1. Read telemetry
Open `<memory-dir>/telemetry/access-log.jsonl`.
Count for each file:
- Number of `memory_used` events (by unique session, not by line)
- Number of `memory_stale` events
- Number of `behavior_prevented_error` events

### 2. Update heat scores
For each memory file:
- `+2` for each unique session with `memory_used`
- `+3` for `behavior_prevented_error`
- `-1` for `memory_stale`
- `-1` for each week with no access (decay)
- `protected: true` → decay does not apply

Min: 0. Max: 10.

Update the frontmatter in each memory `.md` file: `heat`, `last_accessed`, `sessions`.

### 3. Archive the cold ones
If `heat < 1` and `protected: false` — move the file to `memory/archive/YYYY-MM/`.
Remove it from `MEMORY.md`.

### 4. Rewrite the MACHINE-OWNED section in MEMORY.md
The block between `<!-- MACHINE-OWNED -->` and `<!-- /MACHINE-OWNED -->`:
- Include all files with `heat >= 7`
- Sort by descending heat
- Format: `- [filename](filename) — heat:N — short description`

### 5. Update state.json
```json
{
  "last_consolidation": "YYYY-MM-DDTHH:MM:SSZ",
  "last_log_line": <number of processed lines>,
  "heat_cache": { "<file>": <heat>, ... },
  "consolidation_count": <N+1>
}
```

### 6. Final report
Print a table:
| File | Old heat | New heat | Action |
|------|----------|----------|--------|

---

## When to run
- Weekly (Sunday evening or at the start of /weekly-review)
- If access-log.jsonl has more than 20 new lines
