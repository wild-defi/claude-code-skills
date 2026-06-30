# IWS / dreams

Dream journal. One file per dream, named `YYYY-MM-DD.md` (if two dreams on the same day: `YYYY-MM-DD-2.md`).

## How it works

The `/dream` command:
1. Receives the dream (raw, half-remembered, fragments — all fine)
2. Asks 2-3 brief clarifying questions (emotion inside the dream, most vivid image, context from the day before)
3. Interprets through 12 psychological models: 3 in depth + 9 in one line each
4. Saves to `YYYY-MM-DD.md`
5. Updates `patterns.md` with recurring symbols, themes, emotions

## Privacy

All files in `dreams/` (except `README.md` and `patterns.md`) are gitignored — individual dream records are private. Only the structure and the living symbol index are committed.

## Two files in this folder

- `README.md` — this file
- `patterns.md` — the living index: recurring symbols, themes, emotions, candidate links to `self/`

Individual dream files (`YYYY-MM-DD.md`) are gitignored — they contain personal dream content.

## The point

Not interpretation for its own sake. The goal is longitudinal: what symbols recur across months?
Where do dreams echo waking triggers or states already in `self/`? The `/dream` command proposes
links only when something has appeared ≥ 2-3 times over ≥ 1 month.
