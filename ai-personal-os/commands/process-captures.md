# Process Captures

Analyzes captured sessions and extracts material worth turning into content.

> Requires the capture-session hook (see `.claude/hooks/capture-session.sh`), which
> saves each finished session to `captures/raw/`.

## Instructions

1. Read all files from `captures/raw/` using Glob + Read
2. For each file, extract the conversation from the `transcript` field
3. Analyze the content against the criteria below
4. Save the result to `captures/processed/YYYY-MM-DD.md` (today's date)
5. Print a short summary to the user

## What to look for in the conversations

Capture only what's genuinely interesting to an audience:

- **Product decisions** — what you decided to build, change, or cut
- **Skill/tooling work** — new commands, hooks, automations
- **Architecture decisions** — how a system is built and why
- **Non-obvious findings** — what surprised you, what didn't work, what worked better than expected
- **Domain insights** — strategies, methods, risks specific to your field
- **Processes and systems** — how the work is organized, which tools are used

## What NOT to include

- Personal data: names, meeting dates, financial details, passwords, keys
- Technical errors with no takeaway (a bug fixed and forgotten)
- Routine tasks with no insight
- Anything already covered in previous processed files

## Processed file format

```markdown
# Captures — YYYY-MM-DD

## What happened

### [Topic 1]
**Session:** [short context]
**Substance:** [what was decided/done/understood]
**Why interesting:** [for an audience — what's non-obvious here]

### [Topic 2]
...

## Post recommendations

### Post 1: [title]
**Platform:** [your platforms]
**Angle:** [how to frame it — personal experience / insight / how-to / contrarian]
**Thesis:** [one sentence — what the post is about]
**Material from:** [which session/topic]

### Post 2: ...

## Skipped
[Sessions where nothing interesting was found — one line each on why]
```

## Rules

- If `captures/raw/` is empty — tell the user
- If a processed file for today already exists — ask whether to overwrite or append
- After saving, print: how many sessions were processed, how many post ideas were found
