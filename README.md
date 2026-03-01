# Claude Code Skills

A collection of custom commands and systems for [Claude Code](https://claude.ai/claude-code) that extend its capabilities with specialized workflows.

---

## 🗂️ AI Personal OS — Goal Planning System

A complete personal productivity system built on top of Claude Code. Instead of Notion or Todoist, you get an AI partner that actively thinks with you — planning your day, tracking habits, running weekly reviews, and keeping you aligned with your goals.

### What's included

**6 slash commands:**
- `/coach morning` — daily standup: carries over unfinished tasks, proposes a focused plan (max 6h, tasks ≤1h each with measurable metrics)
- `/coach evening` — evening review: logs completed work, updates habit tracker, writes your journal entry
- `/coach priority|stuck|motivation` — prioritization, unblocking, motivational boost
- `/goals` — manage your goal tree (values → vision → yearly → monthly → weekly → daily)
- `/weekly-review` — weekly retrospective and planning
- `/monthly-review` — monthly strategic review
- `/board-of-advisors` — convene a virtual board (real people or roles) to get multi-perspective advice on any decision

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
├── templates/       # Journal template
└── archive/         # Past weeks and months
```

**How tasks work:**
Every task follows the format:
```
[Xh] Task name — Metric: [what "done" looks like]
```
- Daily limit: **6 hours max**
- Any task >1h is automatically decomposed into ≤1h subtasks
- Tasks that carry over 3+ days trigger an escalation prompt: break down / delegate / remove?

### Installation

```bash
# 1. Clone the repo
git clone https://github.com/wild-defi/claude-code-skills.git

# 2. Copy commands to your project
mkdir -p your-project/.claude/commands
cp claude-code-skills/commands/* your-project/.claude/commands/

# 3. Copy the goal system
cp -r claude-code-skills/goal-system/goals your-project/
cp claude-code-skills/goal-system/CLAUDE.md your-project/

# 4. Open Claude Code in your project
cd your-project
claude
```

Then fill in your values, vision, and goals — and start with:
```
/coach morning
```

### Daily workflow

```
Morning → /coach morning   (plan your day)
Evening → /coach evening   (review + journal)
Sunday  → /weekly-review   (retrospective + next week)
```

---

## 🎯 Board of Advisors

Convene a virtual board of advisors to get multi-perspective feedback on any question or decision.

**How it works:**
1. You bring a question or decision to the board
2. Choose 4-5 advisors — roles (investor, skeptic, strategist) or real people (Paul Graham, Naval Ravikant, Andrej Karpathy, etc.)
3. Each advisor responds in their own voice and perspective
4. Claude synthesizes a final recommendation

**Installation (single command):**

```bash
mkdir -p .claude/commands
curl -o .claude/commands/board-of-advisors.md \
  https://raw.githubusercontent.com/wild-defi/claude-code-skills/main/commands/board-of-advisors.md
```

Then run `/board-of-advisors` in Claude Code.

---

## More coming soon

Star this repo to stay updated.

---

Made with ❤️ using [Claude Code](https://claude.ai/claude-code)
