# 🗂️ AI Personal OS

A complete personal operating system built on top of Claude Code. Instead of stitching together
Notion, Todoist, and a journaling app, you get an AI partner that thinks with you — planning your
day, tracking habits, running reviews, capturing content, guarding which projects you take on, and
remembering what matters across sessions.

It started as a goal planner. It grew into a full OS. Everything here is a **template** — clone it,
fill it with your own life, keep the private parts private.

## What's inside

```
ai-personal-os/
├── goals/          # The goal tree: values → vision → yearly → monthly → weekly → daily
│                   # + experiments (rails as hypotheses), idea→production gate, journal, IWS
├── content-mgmt/   # Content pipeline: capture idea → research → draft per platform
├── projects/       # Product projects in _ideas / _active / _archive + a health heartbeat
├── captures/       # Auto-capture sessions → distill into content material
├── memory/         # Living Memory: file-based memory with heat + telemetry
├── profile/        # Your background, for outbound writing
├── .claude/        # 10 commands + hooks + settings
└── CLAUDE.md       # The rules that wire it all together
```

## The 10 commands

**Daily loop**
- `/daily-review` — **the main daily command**: closes yesterday (tasks, habits, journal) and plans
  today (max 6h, each task with a measurable metric) in one session
- `/coach [priority|stuck|motivation]` — prioritization, unblocking, a motivational push

**Reviews**
- `/goals` — manage the goal tree (values → … → daily) and backlog
- `/weekly-review` — weekly retrospective, habit review, experiment check, project heartbeat
- `/monthly-review` — monthly strategic review (and the only place identity-level notes are promoted)

**Thinking & deciding**
- `/decide` — a decision advisor using frameworks from Dalio, Kahneman, Damasio, Haidt, Taleb
- `/board-of-advisors` — convene a simulated board (real people or roles) + a mandatory pre-mortem

**System upkeep**
- `/process-captures` — turn captured sessions into post ideas
- `/weekly-improvement` — analyze your week and propose the few highest-leverage changes
- `/memory-consolidate` — update memory heat scores, archive cold memories

## Key mechanics

**Tasks.** Every task is `[Xh] Task — Metric: [what "done" looks like]`. Daily limit 6h; anything
over 1h is decomposed. A task carried over 3+ days triggers an escalation: what's *really* blocking
this — break down / delegate / remove / schedule a slot?

**Experiments — rails over willpower.** New interventions (a deadline, a block, a public commitment)
are logged as hypotheses with a success signal and a review date. `/weekly-review` checks the ones
that came due. A failed experiment is *data, not failure* — you try a different rail, not "more
discipline".

**Project heartbeat + alignment gate.** Projects live in `_ideas / _active / _archive`. A project
becomes Active only after passing **Gate 0** (is this *mine*? is there a rail? does it drain or
charge me?) and within a WIP limit. `_status.md` flags any Active project stalled 2+ weeks — weeks
before it would show up as a red yearly goal.

**Living Memory.** Facts live one-per-file with a heat score. Hot memories stay in context; cold
ones fade and get archived. Telemetry logs only rare, high-signal events.

**IWS (Inner Work System).** A private, gitignored space for reflection, states, and relationships —
deliberately separated from the goals/KPI side. Only the concept and empty templates ship here.

## Privacy

The whole thing is built to be shared as a system while keeping your life private. `.gitignore`
excludes `goals/IWS/`, `goals/journal/`, `captures/`, memory contents, and your real profile.
What's committed is structure, rules, and templates — not your data.

## Installation

```bash
# 1. Clone
git clone https://github.com/wild-defi/claude-code-skills.git

# 2. Copy the OS into your project
cp -r claude-code-skills/ai-personal-os/. your-project/

# 3. Open Claude Code there
cd your-project
claude
```

Then run:
```
/daily-review
```

**First run:** Claude detects empty goal files and walks you through setup — your values, vision,
and goals (~10 min) — then starts your first review. Fill in `content-mgmt/voice.md` and
`profile/profile-template.md` whenever you want those workflows to sound like you.

## Daily workflow

```
Morning/evening → /daily-review     (close yesterday + plan today)
When stuck      → /coach stuck      (or /decide for a hard call)
Sunday          → /weekly-review    (+ /memory-consolidate, /weekly-improvement)
Month end       → /monthly-review
```

## A note on language

This template is in English. The system was originally run in Russian — it works in any language.
Set your preference in `CLAUDE.md` and tell Claude which outputs go in which language.
