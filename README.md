# Claude Code Skills

A collection of custom commands for [Claude Code](https://claude.ai/claude-code) that extend its capabilities with specialized workflows.

---

## Commands

### 🎯 Board of Advisors

Convene a virtual board of advisors to get multi-perspective feedback on any question or decision.

**How it works:**
1. You bring a question or decision to the board
2. Choose 4-5 advisors — can be roles (investor, skeptic, strategist) or real people (Paul Graham, Naval Ravikant, Andrej Karpathy, etc.)
3. Each advisor responds in their own voice and perspective
4. Claude synthesizes a final recommendation

**Example use cases:**
- Should I take this client?
- How should I price my product?
- Is this the right strategy for growth?
- Review my business idea

---

## Installation

### Option 1 — Single command (copy one file)

1. In your project, create the folder `.claude/commands/` if it doesn't exist
2. Copy `commands/board-of-advisors.md` into it:

```bash
mkdir -p .claude/commands
curl -o .claude/commands/board-of-advisors.md \
  https://raw.githubusercontent.com/wild-defi/claude-code-skills/main/commands/board-of-advisors.md
```

3. Open Claude Code in your project and run:

```
/board-of-advisors
```

### Option 2 — Clone the full repo

```bash
git clone https://github.com/wild-defi/claude-code-skills.git
cp claude-code-skills/commands/board-of-advisors.md your-project/.claude/commands/
```

---

## Usage

```
/board-of-advisors
```

Claude will ask you for:
1. The question or decision you want advice on
2. Who should be on your board (or accept the suggested defaults)

**Example prompt after invoking:**
> Should I launch a paid tier for my Telegram bot at $20/month?

**Example board:**
> Paul Graham, Naval Ravikant, a skeptical risk analyst, a growth strategist

---

## More commands coming soon

This repo will grow with more Claude Code commands. Star it to stay updated.

---

Made with ❤️ using [Claude Code](https://claude.ai/claude-code)
