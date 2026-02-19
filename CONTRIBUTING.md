# Contributing

Want to add a rule? Here's how.

## Adding a new rule

1. Fork this repo
2. Create both formats:
   - `rules/[category]/[name].cursorrules` — the rule itself
   - `rules-mdc/[category]/[name].mdc` — same rule with frontmatter
3. Pick the right category: `languages/`, `frameworks/`, `tools/`, or `practices/`
4. Open a PR

## .mdc frontmatter

Every `.mdc` file needs this at the top:

```yaml
---
description: Brief description of what this rule does
globs: **/relevant/paths/**
alwaysApply: false
---
```

Set `alwaysApply: true` only if the rule should load on every conversation (keep these short).

## What makes a good rule

- **Specific over general.** "Use server timestamps in Firestore" beats "write good database code."
- **Anti-patterns matter.** Tell Cursor what NOT to do, not just what to do.
- **Testable.** If you can't tell whether the AI followed the rule by reading the output, it's too vague.
- **Short enough to fit in context.** Rules that are too long get ignored. Aim for under 50 lines.

## What we don't need

- Rules that just restate language defaults
- Copy-pasted documentation
- Rules for tools/frameworks nobody uses

## Questions?

Open an issue or DM [nedcodes on Dev.to](https://dev.to/nedcodes).
