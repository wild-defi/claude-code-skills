# Content Management System

A content pipeline with research support: capture an idea → research it → draft per platform.

## Structure

```
content-mgmt/
├── CLAUDE.md
├── voice.md           # Tone and style
├── examples/          # Reference posts you like
└── ideas/
    └── NNN-name/
        ├── idea.md        # The idea + status
        ├── research/      # Research material
        │   ├── notes.md   # Notes and conclusions
        │   └── sources.md # Links, quotes, data
        └── drafts/        # Per-platform drafts
            ├── telegram.md
            ├── threads.md
            └── linkedin.md
```

## How it works (natural-language commands)

### Ideas
- **"new idea: [description]"** — create an idea folder
- **"show ideas"** — list all ideas with statuses
- **"idea [number]"** — show idea details

### Statuses
- **"idea [number] in progress"** → `in-progress`
- **"idea [number] ready"** → `ready`
- **"idea [number] published"** → `published`

### Research
- **"research idea [number]: [what to find]"** — search and save into research/
- **"show research [number]"** — show collected material
- **"add to research [number]: [info]"** — add a note manually

### Writing
- **"write a post from idea [number] for [platform]"** — write one post
- **"write posts from idea [number]"** — all platforms

## idea.md format

```markdown
# [Title]

**Status:** new | research | in-progress | ready | published
**Date:** YYYY-MM-DD
**Tags:** #tag1 #tag2
**Source:** [URL or "own idea"]

## The idea
[Short description]

## Audience
[ ] Beginner   [ ] Intermediate   [ ] Advanced

## Angles
- [ ] Lesson: [the main takeaway]
- [ ] Story: [personal story or case]
- [ ] Mistake: [a common mistake]
- [ ] Framework: [a repeatable system/steps]
- [ ] Contrarian: [a non-obvious view]

## Series (if it spans several posts)
- Day 1:
- Day 2:

## Key points
- ...

## Results (fill in after publishing)
- [platform]:
```

## Platforms (customize to yours)

- **Telegram** — main channel, informal, longer, emoji ok
- **Threads** — hook strategy: teaser + link to the main post (not for every post)
- **LinkedIn** — professional tone, cases, structured
- (add/remove platforms to match where you actually publish)

## Rules

1. Read `voice.md` before writing a post
2. Use `examples/` as reference
3. Save sources with quotes during research
4. A post should rest on the collected research
