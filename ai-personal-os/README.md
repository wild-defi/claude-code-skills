# 🗂️ AI Personal OS — Goal Planning System

A complete personal productivity system built on top of Claude Code. Instead of Notion or Todoist, you get an AI partner that actively thinks with you — planning your day, tracking habits, running weekly reviews, and keeping you aligned with your goals.

## What's included

**6 slash commands:**
- `/coach morning` — daily standup: carries over unfinished tasks, proposes a focused plan (max 6h, tasks ≤1h each with measurable metrics)
- `/coach evening` — evening review: logs completed work, updates habit tracker, writes your journal entry
- `/coach priority|stuck|motivation` — prioritization, unblocking, motivational boost
- `/goals` — manage your goal tree (values → vision → yearly → monthly → weekly → daily)
- `/weekly-review` — weekly retrospective and planning
- `/monthly-review` — monthly strategic review

**Goal hierarchy files:**
```
goals/
├── values.md        # Your core values
├── vision.md        # 3-5 year vision
├── yearly.md        # Annual goals
├── monthly.md       # This month's goals
├── weekly.md        # This week + habit tracker
├── daily.md         # Today's tasks
├── backlog.md       # One-off tasks (not tied to goals)
├── journal/         # Daily entries (auto-created by /coach evening)
└── templates/       # Journal template
```

**How tasks work:**
Every task follows the format:
```
[Xh] Task name — Metric: [what "done" looks like]
```
- Daily limit: **6 hours max**
- Any task >1h is automatically decomposed into ≤1h subtasks
- Tasks that carry over 3+ days trigger an escalation prompt: break down / delegate / remove?

## Installation

```bash
# 1. Clone the repo
git clone https://github.com/wild-defi/claude-code-skills.git

# 2. Copy commands to your project
mkdir -p your-project/.claude/commands
cp claude-code-skills/ai-personal-os/commands/* your-project/.claude/commands/

# 3. Copy the goal system
cp -r claude-code-skills/ai-personal-os/goals your-project/
cp claude-code-skills/ai-personal-os/CLAUDE.md your-project/

# 4. Open Claude Code in your project
cd your-project
claude
```

That's it. Now just run:
```
/coach morning
```

**First run:** Claude will detect that your goal files are empty and walk you through setup automatically — asking about your values, vision, and goals, and filling in the files for you (~10 min). Then it starts your first morning standup.

## Daily workflow

```
Morning → /coach morning   (plan your day)
Evening → /coach evening   (review + journal)
Sunday  → /weekly-review   (retrospective + next week)
```

## Example

> **Morning standup**
> Claude reads your weekly goals and yesterday's tasks. Carries over unfinished items. Proposes today's plan — max 6 hours, each task with a measurable metric.
>
> **Evening review**
> Claude asks what you completed. Updates the habit tracker. Asks 3 reflection questions. Writes a journal entry automatically.
>
> **Escalation**
> If a task has been carried over 3+ days, Claude asks: "This task has been pending for 3 days. Break it down / delegate / remove?"
