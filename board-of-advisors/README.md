# 🎯 Board of Advisors

A Claude Code command that convenes a virtual board of advisors to give you multi-perspective feedback on any question or decision.

## How it works

1. You bring a question or decision to the board
2. Choose 4-5 advisors — roles or real people
3. Each advisor responds in their own voice and perspective
4. Claude synthesizes a final recommendation

**Advisors can be:**
- Roles: investor, skeptic, growth strategist, risk analyst, product expert
- Real people: Paul Graham, Naval Ravikant, Andrej Karpathy, Charlie Munger, etc.
- Any mix of the above

## Installation

```bash
mkdir -p .claude/commands
curl -o .claude/commands/board-of-advisors.md \
  https://raw.githubusercontent.com/wild-defi/claude-code-skills/main/board-of-advisors/commands/board-of-advisors.md
```

Then run in Claude Code:
```
/board-of-advisors
```

## Example

> **You:** Should I charge $20/month for my Telegram bot?
>
> **Board:** Paul Graham, Naval Ravikant, a skeptical risk analyst, a growth strategist
>
> → Each gives their perspective → Claude synthesizes a recommendation
