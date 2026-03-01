# CLAUDE.md

## Goal Planning System

This repository uses a structured goal and task management system powered by Claude Code.

### File Structure
```
goals/
├── values.md       # Core values and principles
├── vision.md       # 3-5 year vision
├── yearly.md       # Annual goals
├── monthly.md      # This month's goals
├── weekly.md       # This week's goals + habit tracker
├── daily.md        # Today's tasks
├── backlog.md      # One-off tasks (not tied to goals)
├── journal/        # Daily entries (YYYY-MM-DD.md)
├── templates/      # Templates (journal.md)
└── archive/        # Archived past periods
```

### Available Commands
- `/coach [morning|evening|priority|stuck|motivation]` — personal coach
- `/goals [status|add|decompose|done|edit|align|backlog]` — goal tree management
- `/weekly-review` — weekly retrospective and planning
- `/monthly-review` — monthly strategic review
- `/board-of-advisors` — virtual advisory board for decisions

### Rules
- Max 3-5 goals per level (focus over quantity)
- Every goal must link to the level above (daily → weekly → monthly → yearly → vision → values)
- Always update files when goals change
- Journal entries live in `goals/journal/YYYY-MM-DD.md` using the template

### Task Format
```
[Xh] Task name — Metric: [what "done" looks like]
```
- Daily limit: 6 hours total
- Any task >1h must be broken into subtasks ≤1h each
- Tasks carrying over 3+ days trigger an escalation prompt

### Key Mechanics
- **Carry-over:** morning standup checks yesterday's unfinished tasks and carries them forward
- **Escalation:** task carried over 3+ days → coach asks: break down / delegate / remove?
- **Sync:** evening review updates both daily.md and weekly.md (tasks + habits)
- **Habit tracker:** table in weekly.md updated every evening
- **Backlog:** checked every morning and during weekly planning
