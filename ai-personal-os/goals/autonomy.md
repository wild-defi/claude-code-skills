# Autonomy Tracker

> Goal: every pipeline → L5 (agent runs without me).
> Updated by `/autonomy-review`. Tracks level + velocity + blockers.
> Runs inside `/weekly-review` as a separate section.

---

## AMM — Autonomy Maturity Model

Axis: **how much does this pipeline need you?**
Final level = min(Trigger, Execution, Exception, Output) — the weakest link.

| Level | Name | Trigger | Execution | Exception | Output |
|---|---|---|---|---|---|
| **L1** | Manual | I trigger manually | I do everything | I handle it | I deliver |
| **L2** | Copilot | I trigger | Agent helps on request | I handle it | I send |
| **L3** | Supervised | I trigger | Agent executes | I handle it | Agent delivers after my approval |
| **L4** | Monitored | Schedule / event | Agent autonomously | I only on alerts | Agent delivers |
| **L5** | Autonomous | Event / agent self-triggers | Agent fully | Agent self-corrects | Agent — I get only a summary |

---

## Dashboard

| Pipeline | Level | Prev | Assessed | Velocity | Main blocker |
|---|---|---|---|---|---|
| [pipeline 1] | **L1** | — | YYYY-MM-DD | — | [what's blocking the next level] |
| [pipeline 2] | **L1** | — | YYYY-MM-DD | — | [what's blocking the next level] |
| [pipeline 3] | **L1** | — | YYYY-MM-DD | — | [what's blocking the next level] |

---

## Details

### [pipeline 1]
**Folder:** `[path to pipeline files]`
**Goal:** [what this pipeline produces or does]

| Dimension | Level | Current state |
|---|---|---|
| Trigger | **L1** | I remember to run it manually |
| Execution | **L1** | I do everything |
| Exception | **L1** | I handle errors |
| Output | **L1** | I deliver manually |

**→ L1** (weak link: Trigger + Output)

**Blocker to L2:** [smallest concrete step — e.g. a checklist, a template, a script]
**Blocker to L3:**
- [ ] [automation step]
- [ ] [routing logic or decision rule]

**Blocker to L4-L5:**
- [ ] [scheduled trigger]
- [ ] [auto-delivery mechanism]

---

### [pipeline 2]
**Folder:** `[path]`
**Goal:** [what it produces]

| Dimension | Level | Current state |
|---|---|---|
| Trigger | **L1** | — |
| Execution | **L1** | — |
| Exception | **L1** | — |
| Output | **L1** | — |

**→ L1**

**Blocker to L2:** [next step]

---

## Priority

> What gives maximum autonomy at minimum effort.
> Updated by `/autonomy-review`.

| # | Pipeline | Step | Action | Effort |
|---|---|---|---|---|
| 1 | [pipeline] | L?→L? | [concrete action] | Small |
| 2 | [pipeline] | L?→L? | [concrete action] | Small |
| 3 | [pipeline] | L?→L? | [concrete action] | Medium |

---

## How to fill this in

1. List every repeating workflow that takes your time (content publishing, monitoring, outreach, reviews, etc.)
2. For each, assess the 4 dimensions honestly — the bottleneck sets the level
3. Focus on the one pipeline where a small action moves you up a level with lowest effort
4. Run `/autonomy-review` weekly (or monthly) to track drift
