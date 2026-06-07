---
description: Scaffold or upgrade a hybrid-light Claude x Obsidian second brain in the current vault.
---

# /secondbrain-init

You are setting up the **debby-claudia** hybrid-light second-brain architecture in the
user's current Obsidian vault (the current working directory). Work carefully and never
overwrite existing files without confirmation.

## Steps
1. **Survey.** List the current folder. Detect whether this is already an Obsidian vault
   (look for `.obsidian/`) and whether a `CLAUDE.md`, `wiki/index.md`, or PARA folders exist.
   Summarize what you found in 3-5 lines.

2. **Ask ONE question:** "What is this vault for, and what language(s) should I use for
   conversation vs. domain content?" Use the answer to fill the CLAUDE.md template.

3. **Confirm the plan (<=5 steps), then on approval scaffold:**
   - PARA folders if missing: `00-Inbox 01-Projects 02-Areas 03-Resources 04-Archives
     05-Daily-Notes 06-Templates 07-Claude-Notes` (add a `.gitkeep` to empty ones).
   - `wiki/index.md` — master "map of maps" (see the template in this repo). If one exists,
     APPEND a section, don't overwrite.
   - `CLAUDE.md` — from the repo template, with the user's answers filled in. If one exists,
     show a diff and confirm before changing.
   - `default-prompt.md` — the alignment ritual template.
   - `hooks/hooks.json` — light SessionStart hook that surfaces `wiki/index.md`.
   - `06-Templates/` — Daily, Weekly, Project, Literature, Claude Session.
   - `07-Claude-Notes/_Index.md` — the session journal index.

4. **Offer (don't force) the Obsidian authoring skills:** kepano/obsidian-skills
   (`obsidian-markdown`, `obsidian-bases`, `json-canvas`, `obsidian-cli`, `defuddle`).
   Install into `.claude/skills/` only if the user agrees.

5. **Report briefly:** what was created/changed (paths), and the two habits that make this
   work: (a) tiered reading via `wiki/index.md`, (b) two-layer cross-session memory.

## Rules
- Never overwrite a user's note. Append or confirm first.
- Keep CLAUDE.md lean — it loads every session.
- Don't invent personal data. Use placeholders the user can fill in.
