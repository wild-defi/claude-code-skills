# Weekly Improvement

Weekly improvement agent. Runs analysis, finds what to improve, proposes a plan.

> This command runs a helper script that calls `claude -p` headlessly to gather
> session analytics and reflections, then drafts an improvement plan. Adjust the
> script to your own data sources before relying on it. See
> `.claude/hooks/weekly-improvement.sh`.

## Instructions

Run the script and wait for completion (use a path relative to your project root):

```bash
bash ".claude/hooks/weekly-improvement.sh"
```

After completion:
1. Read the generated file from `captures/processed/weekly-improvement-YYYY-MM-DD.md`
2. Show the user a brief summary: what was found and what is proposed
3. Ask: "What from this do you want to implement right now?"
