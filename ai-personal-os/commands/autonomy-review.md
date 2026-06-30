# /autonomy-review — Pipeline Autonomy Assessment

Reads `goals/autonomy.md`. Inspects pipeline folders. Updates levels, velocity, and priorities.

## When to run
- As a section inside `/weekly-review` (after the project heartbeat)
- Explicit call: `/autonomy-review`

---

## Step 1 — Read current state

Open `goals/autonomy.md`. Note:
- Current levels of all pipelines from the Dashboard
- Last assessed date for each
- Main blockers from the Details section

---

## Step 2 — Quick inspection (no questions yet)

For each pipeline, check its folder to see what changed since the last assessment:

| Pipeline | What to check |
|---|---|
| [your pipeline 1] | recent output files; last time you ran it manually |
| [your pipeline 2] | any automation added; delivery method |
| [your pipeline N] | activity, new templates, new scripts |

Replace placeholders with your real pipelines from `goals/autonomy.md`.

---

## Step 3 — Targeted questions (max 3 for the whole session)

Only if something isn't visible from the files and affects the level. Examples:
- "Did [pipeline] run since the last assessment?"
- "How is delivery done now — still manual or did something change?"
- "Did a template or checklist appear for [step]?"

Don't ask about things visible from the file system.

---

## Step 4 — Update levels

For each pipeline re-assess the 4 dimensions (Trigger / Execution / Exception / Output):
- Final level = min(4 dimensions) — the weakest link sets the level
- If level changed: update `level`, store old in `prev_level`, update `assessed`

**Velocity:**
- Calculate only when there are ≥ 2 assessments with different dates
- `velocity = (new_level - prev_level) / weeks_since_last_assessment`
- If velocity = 0 for 6+ weeks → flag "🔴 stalled"

**Rules:**
- Never lower a level without explicit confirmation ("this broke / I stopped doing it")
- Weekly-review type pipelines: max reasonable level = L3 (reflection requires participation)
- If a pipeline hasn't moved in 8+ weeks → propose: break into a smaller step or acknowledge it's not a priority

---

## Step 5 — Recalculate priority

Sort pipelines by: **(business value × proximity to next level) / effort**

Value criteria:
- Revenue now → high
- Growth and visibility → medium
- Personal system → low

Update the priority table in the file.

---

## Step 6 — Write and report

Update `goals/autonomy.md`:
- Dashboard (levels, velocity, blockers)
- Details for changed pipelines
- Priority table

Output to the user:
```
## Autonomy Review

Date: YYYY-MM-DD

| Pipeline | Before | After | Velocity |
|---|---|---|---|
| ...      | L?     | L?    | +?/Xwk   |

🔺 Moved up: [list]
🔴 Stalled: [list + what's blocking]

**Top action this week:** [one concrete action from pipeline #1 in priority]
```
