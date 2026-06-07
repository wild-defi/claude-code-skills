# Projects

All product projects and ideas live here, in three buckets by maturity.

```
projects/
├── _ideas/      # Product ideas being explored — no decision yet
│   └── name/
│       ├── idea.md      # The gist, the problem, the hypothesis
│       └── research/
├── _active/     # Projects in active development
│   └── name/
├── _archive/    # Finished or shelved projects
└── _status.md   # Heartbeat: health of all active projects
```

## Routing rule

- Product/service idea → `_ideas/name/`
- Active project → `_active/name/`
- Finished/shelved → `_archive/`
- A content idea → `content-mgmt/ideas/` (not here)
- A one-off task → `goals/backlog.md` (not here)

## Activation gate (`_ideas → _active`)

A project becomes Active only after passing the **alignment gate**
(`goals/idea-to-production.md` → "Gate 0"). The gate is the entrance; the WIP limit
caps how many can be inside at once. On passing, add a row to `_status.md`.

## WIP limit

Keep **Active ≤ 5** (tune to your own capacity). If you're at the limit, park or kill
something before starting anything new. `_status.md` is reviewed during `/weekly-review`
to catch stalls (an Active project with no progress for 2+ weeks) before they show up as a
red goal months later.
