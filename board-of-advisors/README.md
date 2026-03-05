# 🎯 Board of Advisors

A Claude Code command that convenes a virtual board of advisors to give you multi-perspective feedback on any question or decision — with built-in anti-bias mechanisms.

## How it works

1. **Define the question** — bring any decision or dilemma to the board
2. **Smart context loading** — if the question is market/competitive, Claude runs a web search first to ground advisors in real data before the discussion
3. **Compose the board** — choose 4-5 advisors (roles or real people). A **Destroyer** is always included — their job is to find the strongest case against your idea
4. **Board discussion** — each advisor responds in their own voice and frameworks
5. **Pre-mortem** — after the discussion: *"One year passed. This decision failed. What went wrong?"* Each advisor gives one specific reason
6. **Synthesis** — key agreements, disagreements, blind spot check, and a final recommendation

## Anti-bias features

| Feature | What it does |
|---------|-------------|
| **Destroyer role** | Mandatory skeptic who builds the strongest case *against* the idea — not general doubt, a specific takedown |
| **Pre-mortem** | Forces advisors to articulate failure modes that don't surface in positive discussion |
| **Blind spot check** | Synthesis explicitly names what was NOT considered and what assumptions were taken for granted |
| **Hybrid search** | Market/competitive questions → web search first; strategic questions → direct to board |
| **Data gaps note** | Synthesis flags which numbers should be verified before acting |

## Advisors can be

- **Roles:** investor, skeptic, growth strategist, risk analyst, product expert, Destroyer
- **Real people:** Paul Graham, Naval Ravikant, Andrej Karpathy, Charlie Munger, etc.
- **Any mix** of the above

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
> **Board:** Paul Graham, Naval Ravikant, Growth Strategist, Destroyer
>
> → Web search if needed → Each gives their perspective → Pre-mortem → Synthesis with blind spot check
