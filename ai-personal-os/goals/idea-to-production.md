# Stack: Idea → Production

> A toolkit, not a checklist. Take what the situation needs.

---

## Gate 0 — Alignment with yourself (before brainstorming)

> A technical stack answers: "is the idea good and buildable?" This gate answers a different
> question: **"is this mine? will it outlive my initial motivation?"** Projects die not from bad
> ideas but from misalignment with the person: no rail → abandoned; cold sales → drains → abandoned.
> Run **every new project through this before starting.**

**Read:** `goals/values.md` (+ your `IWS/` self-map, if you keep one).

**5 checks:**

1. **Visibility axis** — does the project push you toward public output (shipping, writing,
   network), or does it let you hide in the "input" phase (research/analysis forever)?
2. **Sales model** — how does it sell? Is there a warm model (trust + time), or does it require
   cold outreach? Cold → drains → death.
3. **External rail** — is there a deadline / a person on the other side / a public commitment, or
   does it rest on "my own discipline"? No rail = red flag. (Rails beat willpower.)
4. **Energy** — does it charge you or drain you?
5. **Values check** — a quick pass against your decision-making principles (`values.md`).

**Verdict:**

- 🟢 **Go** — passes the key checks → open an Active row in `projects/_status.md` (if WIP < limit;
  otherwise park something first).
- 🟡 **Reshape** — there's a concrete fix: "no rail → add a deadline/person", "cold sales → find a
  warm channel or a sales partner", "not tied to the axis → how to add public output". Fix → re-run.
- 🔴 **Park/Drop** — drains + no rail + not aligned → into `projects/_ideas/` or don't start.

---

## Minimal route (for most ideas)

```
alignment gate → brainstorm → plan → execute (with tests) → code review
```

Everything else is situational.

---

## Full stack by phase (illustrative — swap in your own tools/skills)

| Phase | What it's for | Example tools/skills |
|-------|---------------|----------------------|
| **0 — Validate idea** | Open the idea, surface requirements, challenge assumptions | brainstorming, first-principles |
| **1 — Domain model** | Pin down terms and key decisions | a glossary / ADR habit |
| **2 — Spec & plan** | Define "what done means", break into steps | spec/PRD, planning skill, OpenAPI for integrations |
| **3 — Quick check before code** | De-risk unclear logic or UI | throwaway prototype (logic or UI) |
| **4 — Implementation** | Build it | TDD, plan execution, parallel sub-agents, frontend design |
| **5 — Review & quality** | Catch bugs before merge | code review, systematic debugging |
| **6 — Capture knowledge** | What we learned, what not to repeat | reflect / compounding-learnings habit |

---

## Matrix: what to use per task

| Task type | Route |
|-----------|-------|
| **Small feature** | brainstorm → plan → TDD |
| **Large feature** | brainstorm → spec → plan → TDD → code review |
| **New product** | first-principles → brainstorm → domain model → spec → plan → TDD → deep review |
| **Unsure about logic** | prototype the logic first |
| **Unsure about design** | prototype the UI first |
| **Strange bug** | systematic debugging |

---

*Adapt the tool names to whatever skills/plugins you actually have installed.*
