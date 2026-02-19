# cursorrules-collection

[![Stars](https://img.shields.io/github/stars/cursorrulespacks/cursorrules-collection?style=social)](https://github.com/cursorrulespacks/cursorrules-collection)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)

56 rules for Cursor AI in both `.mdc` and `.cursorrules` format. Copy to your project and Cursor actually writes code the way you want it to.

> **⚠️ Using Cursor agent mode?** Use the `.mdc` files in `rules-mdc/`. Both `.cursorrules` and `.mdc` are loaded, but `.mdc` takes precedence on conflicts and gives you frontmatter (`alwaysApply`, globs). [More details](https://dev.to/nedcodes/cursor-agent-mode-ignores-cursorrules-use-mdc-instead-5flb).

## Quick Start

**For agent mode (recommended):**

```bash
# Copy the .mdc file into your project's .cursor/rules/ directory
mkdir -p .cursor/rules
curl -o .cursor/rules/typescript.mdc https://raw.githubusercontent.com/cursorrulespacks/cursorrules-collection/main/rules-mdc/languages/typescript.mdc
```

**For regular Cursor sessions (composer, chat):**

```bash
curl -o .cursorrules https://raw.githubusercontent.com/cursorrulespacks/cursorrules-collection/main/rules/languages/typescript.cursorrules
```

Each `.mdc` file includes:
- `alwaysApply: true` (required for agent mode)
- `globs` for file-type scoping where applicable (e.g. Python rules only apply to `*.py`)
- `description` for Cursor's context

## 📝 Articles & Guides

- [Cursor Agent Mode Ignores .cursorrules — Use .mdc Instead](https://dev.to/nedcodes/cursor-agent-mode-ignores-cursorrules-use-mdc-instead-5flb)
- [5 .cursorrules That Actually Changed Cursor's Output](https://dev.to/nedcodes/5-cursorrules-that-actually-changed-cursors-output-and-2-that-were-useless-gel)
- [How to Write .cursorrules That Actually Work](https://dev.to/nedcodes/how-to-write-cursorrules-that-actually-work-2imd)
- [5 .cursorrules That Actually Changed What Cursor Generates (React/Next.js)](https://dev.to/nedcodes/5-cursorrules-that-actually-changed-what-cursor-generates-reactnextjs-3888)

## Before / After

Same prompts, different output. Left side is vanilla Cursor, right side is with rules applied.

**React component:**
![React before/after](before-after-react.png)

**Python API endpoint:**
![Python before/after](before-after-python.png)

**TypeScript function:**
![TypeScript before/after](before-after-ts.png)

## Rules

### Languages

| Rule | .mdc (agent mode) | .cursorrules (legacy) |
|------|---|---|
| Python | [python.mdc](rules-mdc/languages/python.mdc) | [python.cursorrules](rules/languages/python.cursorrules) |
| JavaScript | [javascript.mdc](rules-mdc/languages/javascript.mdc) | [javascript.cursorrules](rules/languages/javascript.cursorrules) |
| TypeScript | [typescript.mdc](rules-mdc/languages/typescript.mdc) | [typescript.cursorrules](rules/languages/typescript.cursorrules) |
| Go | [go.mdc](rules-mdc/languages/go.mdc) | [go.cursorrules](rules/languages/go.cursorrules) |
| Rust | [rust.mdc](rules-mdc/languages/rust.mdc) | [rust.cursorrules](rules/languages/rust.cursorrules) |
| Java | [java.mdc](rules-mdc/languages/java.mdc) | [java.cursorrules](rules/languages/java.cursorrules) |
| C# | [csharp.mdc](rules-mdc/languages/csharp.mdc) | [csharp.cursorrules](rules/languages/csharp.cursorrules) |
| Ruby | [ruby.mdc](rules-mdc/languages/ruby.mdc) | [ruby.cursorrules](rules/languages/ruby.cursorrules) |
| PHP | [php.mdc](rules-mdc/languages/php.mdc) | [php.cursorrules](rules/languages/php.cursorrules) |
| Swift | [swift.mdc](rules-mdc/languages/swift.mdc) | [swift.cursorrules](rules/languages/swift.cursorrules) |
| Kotlin | [kotlin.mdc](rules-mdc/languages/kotlin.mdc) | [kotlin.cursorrules](rules/languages/kotlin.cursorrules) |
| Elixir | [elixir.mdc](rules-mdc/languages/elixir.mdc) | [elixir.cursorrules](rules/languages/elixir.cursorrules) |
| Scala | [scala.mdc](rules-mdc/languages/scala.mdc) | [scala.cursorrules](rules/languages/scala.cursorrules) |
| C++ | [cpp.mdc](rules-mdc/languages/cpp.mdc) | [cpp.cursorrules](rules/languages/cpp.cursorrules) |

### Frameworks

| Rule | .mdc (agent mode) | .cursorrules (legacy) |
|------|---|---|
| React | [react.mdc](rules-mdc/frameworks/react.mdc) | [react.cursorrules](rules/frameworks/react.cursorrules) |
| Next.js | [nextjs.mdc](rules-mdc/frameworks/nextjs.mdc) | [nextjs.cursorrules](rules/frameworks/nextjs.cursorrules) |
| Vue | [vue.mdc](rules-mdc/frameworks/vue.mdc) | [vue.cursorrules](rules/frameworks/vue.cursorrules) |
| Svelte | [svelte.mdc](rules-mdc/frameworks/svelte.mdc) | [svelte.cursorrules](rules/frameworks/svelte.cursorrules) |
| Django | [django.mdc](rules-mdc/frameworks/django.mdc) | [django.cursorrules](rules/frameworks/django.cursorrules) |
| FastAPI | [fastapi.mdc](rules-mdc/frameworks/fastapi.mdc) | [fastapi.cursorrules](rules/frameworks/fastapi.cursorrules) |
| Express | [express.mdc](rules-mdc/frameworks/express.mdc) | [express.cursorrules](rules/frameworks/express.cursorrules) |
| Rails | [rails.mdc](rules-mdc/frameworks/rails.mdc) | [rails.cursorrules](rules/frameworks/rails.cursorrules) |
| Laravel | [laravel.mdc](rules-mdc/frameworks/laravel.mdc) | [laravel.cursorrules](rules/frameworks/laravel.cursorrules) |
| Flutter | [flutter.mdc](rules-mdc/frameworks/flutter.mdc) | [flutter.cursorrules](rules/frameworks/flutter.cursorrules) |
| Angular | [angular.mdc](rules-mdc/frameworks/angular.mdc) | [angular.cursorrules](rules/frameworks/angular.cursorrules) |
| Astro | [astro.mdc](rules-mdc/frameworks/astro.mdc) | [astro.cursorrules](rules/frameworks/astro.cursorrules) |
| Remix | [remix.mdc](rules-mdc/frameworks/remix.mdc) | [remix.cursorrules](rules/frameworks/remix.cursorrules) |
| Nuxt | [nuxt.mdc](rules-mdc/frameworks/nuxt.mdc) | [nuxt.cursorrules](rules/frameworks/nuxt.cursorrules) |
| Tailwind CSS | [tailwind-css.mdc](rules-mdc/frameworks/tailwind-css.mdc) | [tailwind-css.cursorrules](rules/frameworks/tailwind-css.cursorrules) |
| Gatsby | [gatsby.mdc](rules-mdc/frameworks/gatsby.mdc) | [gatsby.cursorrules](rules/frameworks/gatsby.cursorrules) |
| SolidJS | [solid-js.mdc](rules-mdc/frameworks/solid-js.mdc) | [solid-js.cursorrules](rules/frameworks/solid-js.cursorrules) |

### Practices

| Rule | .mdc (agent mode) | .cursorrules (legacy) |
|------|---|---|
| Clean Code | [clean-code.mdc](rules-mdc/practices/clean-code.mdc) | [clean-code.cursorrules](rules/practices/clean-code.cursorrules) |
| Testing | [testing.mdc](rules-mdc/practices/testing.mdc) | [testing.cursorrules](rules/practices/testing.cursorrules) |
| Documentation | [documentation.mdc](rules-mdc/practices/documentation.mdc) | [documentation.cursorrules](rules/practices/documentation.cursorrules) |
| Git Workflow | [git-workflow.mdc](rules-mdc/practices/git-workflow.mdc) | [git-workflow.cursorrules](rules/practices/git-workflow.cursorrules) |
| Code Review | [code-review.mdc](rules-mdc/practices/code-review.mdc) | [code-review.cursorrules](rules/practices/code-review.cursorrules) |
| Security | [security.mdc](rules-mdc/practices/security.mdc) | [security.cursorrules](rules/practices/security.cursorrules) |
| Performance | [performance.mdc](rules-mdc/practices/performance.mdc) | [performance.cursorrules](rules/practices/performance.cursorrules) |
| Accessibility | [accessibility.mdc](rules-mdc/practices/accessibility.mdc) | [accessibility.cursorrules](rules/practices/accessibility.cursorrules) |
| API Design | [api-design.mdc](rules-mdc/practices/api-design.mdc) | [api-design.cursorrules](rules/practices/api-design.cursorrules) |
| Error Handling | [error-handling.mdc](rules-mdc/practices/error-handling.mdc) | [error-handling.cursorrules](rules/practices/error-handling.cursorrules) |
| Logging | [logging.mdc](rules-mdc/practices/logging.mdc) | [logging.cursorrules](rules/practices/logging.cursorrules) |
| Monitoring | [monitoring.mdc](rules-mdc/practices/monitoring.mdc) | [monitoring.cursorrules](rules/practices/monitoring.cursorrules) |

### Tools

| Rule | .mdc (agent mode) | .cursorrules (legacy) |
|------|---|---|
| Docker | [docker.mdc](rules-mdc/tools/docker.mdc) | [docker.cursorrules](rules/tools/docker.cursorrules) |
| Terraform | [terraform.mdc](rules-mdc/tools/terraform.mdc) | [terraform.cursorrules](rules/tools/terraform.cursorrules) |
| Kubernetes | [kubernetes.mdc](rules-mdc/tools/kubernetes.mdc) | [kubernetes.cursorrules](rules/tools/kubernetes.cursorrules) |
| CI/CD | [ci-cd.mdc](rules-mdc/tools/ci-cd.mdc) | [ci-cd.cursorrules](rules/tools/ci-cd.cursorrules) |
| VS Code / Cursor | [vscode.mdc](rules-mdc/tools/vscode.mdc) | [vscode.cursorrules](rules/tools/vscode.cursorrules) |
| GraphQL | [graphql.mdc](rules-mdc/tools/graphql.mdc) | [graphql.cursorrules](rules/tools/graphql.cursorrules) |
| Prisma | [prisma.mdc](rules-mdc/tools/prisma.mdc) | [prisma.cursorrules](rules/tools/prisma.cursorrules) |
| Supabase | [supabase.mdc](rules-mdc/tools/supabase.mdc) | [supabase.cursorrules](rules/tools/supabase.cursorrules) |
| MongoDB | [mongodb.mdc](rules-mdc/tools/mongodb.mdc) | [mongodb.cursorrules](rules/tools/mongodb.cursorrules) |
| PostgreSQL | [postgresql.mdc](rules-mdc/tools/postgresql.mdc) | [postgresql.cursorrules](rules/tools/postgresql.cursorrules) |
| AWS | [aws.mdc](rules-mdc/tools/aws.mdc) | [aws.cursorrules](rules/tools/aws.cursorrules) |
| Redis | [redis.mdc](rules-mdc/tools/redis.mdc) | [redis.cursorrules](rules/tools/redis.cursorrules) |
| Nginx | [nginx.mdc](rules-mdc/tools/nginx.mdc) | [nginx.cursorrules](rules/tools/nginx.cursorrules) |

## Using Multiple Rules

**With .mdc (recommended):** Just copy multiple files into `.cursor/rules/`. Each one works independently. Glob patterns keep them scoped to the right files.

```bash
mkdir -p .cursor/rules
cp rules-mdc/languages/typescript.mdc .cursor/rules/
cp rules-mdc/frameworks/nextjs.mdc .cursor/rules/
cp rules-mdc/practices/testing.mdc .cursor/rules/
```

**With .cursorrules:** Combine them into one file:

```bash
cat rules/languages/typescript.cursorrules rules/frameworks/nextjs.cursorrules > .cursorrules
```

## Contributing

PRs welcome. See [CONTRIBUTING.md](CONTRIBUTING.md). The bar: rules should be specific enough to actually change Cursor's output. "Write clean code" doesn't count.

## Need help with your Cursor setup?

If your rules aren't working the way you expect, or you're not sure how to set up Cursor for your specific project, I do async setup reviews. You share your config, I tell you what's broken and how to fix it. No calls, just a written report.

DM me on [Dev.to](https://dev.to/nedcodes) or the [Cursor Forum](https://forum.cursor.com) (nedcodes on both).

## Other tools

- [cursor-lint](https://github.com/cursorrulespacks/cursor-lint) — Lint your Cursor rules. Catches common mistakes before they break your workflow.
- [More articles on Dev.to](https://dev.to/nedcodes) — Tests, guides, and things I've learned about making Cursor actually listen.

## License

MIT
