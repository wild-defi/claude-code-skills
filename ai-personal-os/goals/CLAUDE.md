# CLAUDE.md — goals/

This folder is the goal management system. Full instructions: `../CLAUDE.md`.

## Files

| File                    | Purpose                                                        |
| ----------------------- | ------------------------------------------------------------- |
| `values.md`             | Values and principles                                          |
| `vision.md`             | 3-5 year vision                                                |
| `yearly.md`             | Annual goals                                                   |
| `monthly.md`            | This month's goals                                             |
| `weekly.md`             | This week's goals + habit tracker                             |
| `daily.md`              | Today's tasks                                                  |
| `backlog.md`            | One-off tasks not tied to goals                              |
| `experiments.md`        | Rails as trackable hypotheses (success signal + review date)  |
| `autonomy.md`           | AMM tracker: autonomy level of your pipelines (L1→L5)        |
| `journal/YYYY-MM-DD.md` | Daily entries                                                 |
| `templates/journal.md`  | Journal template                                             |
| `IWS/`                  | Inner Work System — private folder (gitignored), see `IWS/README.md` |

## Rules

- Hierarchy: daily → weekly → monthly → yearly → vision → values
- Max 3-5 goals per level
- When a file changes — update the linked levels

## Task format (daily.md)

```
[Xh] Task name — Metric: [what "done" means]
```

- Daily limit: <= 6 hours total
- Any task > 1h → break into subtasks <= 1h

## Commands

- `/daily-review` — close yesterday + plan today in one session
- `/coach [priority|stuck|motivation]` — prioritization, unblocking, motivation
- `/goals` — manage the goal tree and backlog
- `/weekly-review` — weekly retrospective
- `/monthly-review` — monthly review
- `/autonomy-review` — assess autonomy levels of your pipelines (AMM L1→L5)
- `/dream` — record a dream and interpret it through 12 psychological models (IWS tool)
