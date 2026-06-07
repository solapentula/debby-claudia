---
date: 2026-01-01
tags: [example-domain, concept]
domain: Example-Domain
status: draft
related:
  - "[[Example-Domain]]"
source: example
---

# Example Topic

This note shows the conventions every knowledge note should follow: rich frontmatter
(so Obsidian Bases can query it), wikilinks, callouts, and an optional diagram.

> [!info] Why frontmatter matters
> `domain`, `status`, and `related` turn a flat note into queryable data and a graph node.

## Idea
Write atomic, self-contained notes. Link generously with [[wikilinks]] — connections are
the point of a second brain.

## A diagram (renders natively in Obsidian)
```mermaid
flowchart LR
  A[Capture in 00-Inbox] --> B[File into 02-Areas]
  B --> C[Link from a MOC]
  C --> D[Surface via wiki/index.md]
```

## Related
- [[Example-Domain]]
