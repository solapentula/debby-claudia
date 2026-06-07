# {{VAULT_NAME}} — Context for Claude

> This file is auto-loaded every session. Keep it lean: it is the contract that
> makes Claude work the way you want. Fill in the `{{placeholders}}` and delete
> anything you don't use. (Template from github.com/solapentula/debby-claudia)

## Owner & Language
{{OWNER — who you are, role, what this vault is for}}
- **{{primary language}}** for personal notes, admin, and conversation.
- **{{secondary language}}** for {{e.g. technical/domain content}}.
- When re-explaining a concept: paraphrase so I actually understand it — not a literal translation.

## Prompt Protocol (scaled by task weight)
Judge the weight of the task before acting:

**Light** — a short question, a refresher, a slash-command, a lookup, a small edit:
**do it directly**, no ritual, stay concise.

**Substantial** — a deliverable, long writing, multi-step work, many-file changes,
or whenever I attach context/reference files: follow the full **alignment ritual**
in `default-prompt.md`. In short:
1. Read **in full** every context file I name before responding.
2. State the **3 most important rules** from that context for this task.
3. Ask **clarifying questions** (AskUserQuestion) if anything is ambiguous.
4. Give a plan of **<=5 steps**; start only **after I agree**.
5. If you're about to break one of my rules, **stop** and tell me.

Always:
- Before writing to the vault, say which files you'll read/change.
- **Never overwrite** an existing note — append or confirm first.
- When done: report briefly (path + summary). Don't paste long content back.

## Tiered Read Protocol — REQUIRED (saves tokens)
When answering questions about vault contents, read **in order and as shallow as possible**:
1. `wiki/index.md` (master map) -> pick the relevant domain/project.
2. Domain MOC / project home -> list of notes + status.
3. Specific note -> use `grep` and the `related` frontmatter field to jump directly; don't read many files in full.

Token rules:
- Don't scan the whole vault or read large folders "just in case".
- For web clips, use the **defuddle** skill (clean markdown = fewer tokens).
- Cite the notes/sources you read (path or wikilink); don't answer from model memory.
- Keep answers short and dense; no filler.

## Active Projects
- [[01-Projects/{{project}}/{{project}}|{{Project name}}]] — {{goal, status}}.
- (add more as needed)

## Vault Structure (PARA)
`00-Inbox` (everything lands here first) - `01-Projects` (active, time-bound) -
`02-Areas` (ongoing responsibilities / knowledge) - `03-Resources` (reference) -
`04-Archives` (inactive) - `05-Daily-Notes` - `06-Templates` - `07-Claude-Notes`.
- `wiki/index.md` = master navigation map (entry point for tiered reading).
- `default-prompt.md` = full alignment ritual for substantial tasks.
- New notes -> `00-Inbox`, then moved to the right folder.

## Cross-Session Memory (two layers)
- **Short status** (where we stopped + next step) -> Claude's memory, auto-loaded each session.
- **Full journal** -> `07-Claude-Notes/YYYY-MM-DD-topic.md`. At the end of a session with
  meaningful changes, log a brief entry here.

## Writing Conventions
- Every new file: YAML frontmatter (`date` ISO `YYYY-MM-DD`, `tags`, `source`;
  add `domain`/`status`/`related` for knowledge notes so Obsidian Bases can query them).
- Link notes with `[[wikilinks]]`; use consistent `#tags` (avoid one-off tags).
- Dates: display `DD-MMM-YY`, machine (filename + `date` field) `YYYY-MM-DD`.
- No decorative emoji; plain sentences and headings.
- Write native Obsidian Markdown (callouts `[!info]/[!warning]`, mermaid, properties)
  — see the `obsidian-markdown` skill.

## Skills
Obsidian authoring skills (kepano/obsidian-skills — install once, see README):
`obsidian-markdown`, `obsidian-bases` (.base), `json-canvas` (.canvas),
`obsidian-cli`, `defuddle` (clean web clips).
Add your own domain skills here and note where their output goes.

## Output Locations
Knowledge notes -> the relevant `02-Areas` subfolder. Claude's working notes -> `07-Claude-Notes`.
Project files -> under the relevant `01-Projects`/`02-Areas` project. Unsure -> `00-Inbox`.
