# IWS — Inner Work System

A folder for reflection, working on yourself, relationships, and emotional states.
**Contents are private — this folder is gitignored and nothing is committed.**

> What ships in this public repo is only the **concept + empty templates**. Your actual
> self-map, reflections, and relationship notes never leave your machine.

## Structure

- `self/` — your self-map
  - `traits.md` — strengths/weaknesses, patterns, energy map, dated observations
  - `triggers.md` — what knocks you off balance
  - `states.md` — recurring emotional states
  - `identity.md` — who you are / who you want to be
- `relationships/` — significant relationships
  - `log/` — specific situations and observations (`YYYY-MM-DD-who.md`)
- `frameworks/` — a library of approaches (your "first-aid kit"): CBT, IFS, stoicism, ACT
- `protocols/` — what to do when stuck (one file = one type of stuckness)
- `reflections/` — deep reflection (`YYYY-MM-DD.md`), separate from the daily journal

## Principles

1. **Privacy.** Don't quote IWS in commits, PRs, posts, or messages to third parties. Gentle tone.
2. **Observe, don't judge.** Record patterns and states as they are, without verdicts or labels.
3. **Frameworks are tools, not dogma.** Pick the approach for the situation, not the reverse.
4. **Incremental.** The structure grows as you actually use it. Empty files are fine.
5. **Layers and the ladder (collecting ≠ synthesizing).** Observations accumulate in a provisional
   layer (L1: dated lines in `self/traits.md`, `states.md`, `triggers.md`) — written daily/weekly,
   append-only. They are promoted into identity (L0: the prose sections of those files + `values.md`)
   only during `/monthly-review`, and only after surviving ≥1 month and recurring. Identity is not
   rewritten from a single intense day.

## Where things go

| Entry type | Where | Format |
|-----------|-------|--------|
| Short insight about yourself | `self/traits.md` → "Observations" section | `YYYY-MM-DD — observation` (one line) |
| A trigger event in the moment | `reflections/YYYY-MM-DD.md` | `[time] — event \| trigger: ... \| exit: ... \| learned: ...` |
| Deep reflection / breakdown | `reflections/YYYY-MM-DD.md` | Free markdown |
| Situation with a specific person | `relationships/log/YYYY-MM-DD-who.md` | Free markdown |
| Recurring state / emotion | `self/states.md` | dated line |

### vs the daily journal

- `../journal/YYYY-MM-DD.md` (outside IWS) — the lived day, tasks, mood. Every day.
- `reflections/YYYY-MM-DD.md` (inside IWS) — on-demand, not every day. Deep breakdowns, patterns,
  heavy topics. If something heavy surfaces in the daily journal, move it here and leave a short
  pointer ("worked through it in IWS").

## Navigation rule

- **Always read `IWS-INDEX.md` first** — it maps the files and routes by topic.
- Then go only into the 1-2 relevant files. Don't read the whole folder.
- When a file is created or changed substantially — update its row in `IWS-INDEX.md`.

## Link to the rest of the system

- `goals/values.md` — values (anchor for identity and decisions)
- `goals/journal/` — everyday entries; IWS is for deeper cuts
- `/coach` — works with goals and tasks; IWS is for psyche and relationships
