# CLAUDE.md

Instructions for Claude Code working inside this Personal OS. These override default behavior.

## General rules

### Don't start building until I've finished explaining
If a request looks unfinished or I'm explaining something step by step — wait. Don't create files,
edit, or propose solutions until I explicitly say "go" / "do it", or ask a concrete question.
When in doubt — ask, don't act.

### Project map — always check the path before writing

```
.
├── goals/                  # Goal management + coaching
│   ├── values.md
│   ├── vision.md
│   ├── yearly.md
│   ├── monthly.md
│   ├── weekly.md
│   ├── daily.md
│   ├── backlog.md          # One-off tasks only (NOT content ideas, NOT product ideas)
│   ├── experiments.md      # Rails as trackable hypotheses (success signal + review date)
│   ├── idea-to-production.md  # Gate 0 (alignment) + the idea→production stack
│   ├── journal/            # Daily entries (YYYY-MM-DD.md)
│   ├── templates/
│   ├── archive/
│   └── IWS/                # Inner Work System — private (gitignored)
│
├── content-mgmt/           # Content pipeline
│   ├── voice.md
│   ├── examples/
│   └── ideas/NNN-name/{idea.md, research/, drafts/}   # content ideas — ALWAYS here
│
├── projects/               # Product projects and ideas
│   ├── _ideas/             # Ideas being explored, no decision yet
│   ├── _active/            # In active development
│   ├── _archive/           # Finished or shelved
│   └── _status.md          # Heartbeat of active projects
│
├── captures/               # Session capture → distilled content material
├── memory/                 # Living Memory (telemetry + heat); see memory/README.md
├── profile/                # Background / résumé for outbound writing
├── CLAUDE.md               # This file
└── .claude/                # Commands, hooks, settings
```

**Routing rule — where a file goes:**
- Post/article idea → `content-mgmt/ideas/NNN-name/`
- Product/service idea → `projects/_ideas/name/`
- Active project → `projects/_active/name/`
- Finished/shelved → `projects/_archive/`
- Task with no project → `goals/backlog.md`

**Activation gate:** moving a project `_ideas → _active` requires passing the alignment gate
(`goals/idea-to-production.md` → "Gate 0") and respecting the WIP limit. Then add a row to
`projects/_status.md`.

**Rule:** before creating or editing a file — confirm the path matches this map. When unsure — ask.

---

## Localization

This template ships in English. If you work in another language, set your preference here and tell
Claude which outputs should be in which language (e.g. coaching/journal in your language,
docs/README in English).

---

## Date & time

- **Always check the current date** before updating daily.md, weekly.md, the habit tracker, or the
  journal — take it from context, don't guess.
- **Don't invent time estimates** — if there's no data, leave the field empty or ask.
- For the habit tracker: determine the weekday explicitly before writing to the right column.

---

## Planning discipline

- **Plan → Confirm → Implement:** if a task needs file changes — plan first, implement after approval.
- **Don't expand scope:** if asked to fix one file — don't touch neighbors "while you're at it".
- **Simplicity first:** before proposing something complex, check for a simpler way.
- **Official tools before your own adapter:** before wrapping an external service, check for an SDK /
  helper contract / CLI the provider already offers.
- If scope is unclear — ask before starting.

---

## Goal system (summary)

- Hierarchy: daily → weekly → monthly → yearly → vision → values
- Max 3-5 goals per level (focus over quantity)
- Every goal links to the level above; update linked files when goals change
- Task format: `[Xh] Task — Metric: [what "done" means]`; daily limit 6h; tasks >1h get decomposed
- **Carry-over:** the morning standup carries yesterday's unfinished tasks forward
- **Escalation:** a task carried 3+ days → ask "what's really blocking this?" then offer
  break down / delegate / remove / schedule a slot
- **Sync:** the evening review updates both daily.md and weekly.md (tasks + habits)
- **Backlog:** checked every morning and during weekly planning
- Full per-folder rules: `goals/CLAUDE.md`

Commands: `/daily-review`, `/coach [priority|stuck|motivation]`, `/goals`, `/weekly-review`,
`/monthly-review`, `/board-of-advisors`, `/decide`, `/process-captures`, `/weekly-improvement`,
`/memory-consolidate`.

---

## Experiments — rails over willpower

New interventions are tracked as hypotheses in `goals/experiments.md`: each has a success signal
and a review date; `/weekly-review` checks the ones that came due. A failed experiment is **data,
not a personal failure** — try a *different* rail, not "more discipline". See `experiments.md`.

---

## IWS — Inner Work System (`goals/IWS/`)

Private folder for reflection, working on yourself, relationships, and emotional states.

- **Privacy (hard rule):** fully gitignored, never committed. Don't quote IWS content in commits,
  PRs, posts, or messages to third parties. Tone: gentle, non-judgmental.
- **Navigation (hard rule):** always read `goals/IWS/IWS-INDEX.md` first, then go only into the 1-2
  relevant files — don't read the whole folder. Update the INDEX when a file changes substantially.
- **Boundary with `/coach` and `goals/`:** coaching/goals = tasks, habits, KPIs. IWS = psyche,
  states, relationships, patterns. If a conversation turns emotional/interpersonal — work through
  IWS, not daily.md.

Full rules: `goals/IWS/README.md`.

---

## Living Memory

Memory follows a Living Memory pattern: high-heat memories stay in context, cold ones fade.
Log only rare, high-signal events (`memory_used`, `memory_stale`, `memory_missing`,
`behavior_prevented_error`) — not routine loads. Run `/memory-consolidate` weekly. See
`memory/README.md`.
