# Experiments — rails as trackable hypotheses

> Every new external rail = a hypothesis with a predefined **success signal** and **review date**.
> The goal is to build a library of "which rails actually work on me."
> This is the main lever: **rails beat willpower** — a deadline, a person waiting, a public
> commitment, or a hard block changes behavior far more reliably than "more discipline."
>
> Not a duplicate of the habit tracker: the tracker counts an *established* habit; an experiment
> tests whether a *new intervention* works.

## The loop

1. Set a rail → register it here: hypothesis, rail, success signal, review date.
2. Live the period (review date = external deadline for the check).
3. `/weekly-review` checks for arrived review dates → compare against the signal → verdict.
4. Verdict:
   - ✅ **worked** → the rail stays; if it's a habit → it moves into the `weekly.md` tracker.
   - ❌ **didn't work** → this is **data, not failure**: wrong rail → new experiment with a
     **different** rail (not "more discipline").
   - ❔ **unclear** → extend the review date or sharpen the success signal.

## Format

```
### [status] Title
- Hypothesis:      if <rail/action>, then <what changes>
- Rail:            <external mechanism: deadline / person / block / public commitment>
- Success signal:  <measurable, with a threshold and a date>
- Start: YYYY-MM-DD · Review: YYYY-MM-DD
- Verdict:         — (worked / didn't work / unclear) + what you learned
```

Statuses: `active` → `due` (review date arrived) → `done`.

---

## Active

### [active] Example — phone lockout at 22:30 for sleep
- Hypothesis:      if I hard-block the phone from 22:30 (with an inconvenient passcode), I'll stop
                   doomscrolling at night and go to bed before 23:00
- Rail:            Screen Time lockout 22:30–07:30 with an inconvenient passcode (external block)
- Success signal:  asleep before 23:00 on >= 5/7 nights, two weeks in a row (per the `weekly.md` tracker)
- Start: YYYY-MM-DD · Review: YYYY-MM-DD
- Verdict:         —
- If ❌:           next rail — phone charging in another room by 23:00

---

## Done

_(Move experiments here once reviewed. Keep them — the library of "what works on me" is the point.)_
