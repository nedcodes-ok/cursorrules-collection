# Cursor Rules Collection

[![Stars](https://img.shields.io/github/stars/cursorrulespacks/cursorrules-collection?style=social)](https://github.com/cursorrulespacks/cursorrules-collection)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)

A curated collection of `.cursorrules` files for [Cursor AI](https://cursor.sh) — the AI-first code editor. Drop these into your project root and immediately get better, more consistent AI-generated code.

## What are .cursorrules?

`.cursorrules` files tell Cursor's AI how to write code for your project. Think of them as a style guide that the AI actually follows. Place a `.cursorrules` file in your project root and Cursor will use it as context for every AI interaction.

## Rules

### Languages

| Rule | Description |
|------|-------------|
| [Python](rules/languages/python.cursorrules) | Type hints, pathlib, pytest, clean error handling |
| [JavaScript](rules/languages/javascript.cursorrules) | Modern ES6+, async/await, pure functions |
| [TypeScript](rules/languages/typescript.cursorrules) | Strict mode, generics, discriminated unions |
| [Go](rules/languages/go.cursorrules) | Error wrapping, goroutines, interfaces |
| [Rust](rules/languages/rust.cursorrules) | Ownership patterns, Result types, iterators |
| [Java](rules/languages/java.cursorrules) | Modern Java (records, sealed classes, streams) |
| [C#](rules/languages/csharp.cursorrules) | Async/await, nullable refs, LINQ |
| [Ruby](rules/languages/ruby.cursorrules) | Idiomatic Ruby, blocks, RSpec |
| [PHP](rules/languages/php.cursorrules) | PHP 8.x+, typed properties, PSR standards |
| [Swift](rules/languages/swift.cursorrules) | SwiftUI, actors, async/await, value types |

### Frameworks

| Rule | Description |
|------|-------------|
| [React](rules/frameworks/react.cursorrules) | Hooks, composition, performance patterns |
| [Next.js](rules/frameworks/nextjs.cursorrules) | App Router, Server Components, server actions |
| [Vue](rules/frameworks/vue.cursorrules) | Composition API, Pinia, script setup |
| [Svelte](rules/frameworks/svelte.cursorrules) | Svelte 5 runes, reactivity, stores |
| [Django](rules/frameworks/django.cursorrules) | Models, views, ORM best practices |
| [FastAPI](rules/frameworks/fastapi.cursorrules) | Pydantic v2, dependency injection, async |
| [Express](rules/frameworks/express.cursorrules) | Middleware, error handling, validation |
| [Rails](rules/frameworks/rails.cursorrules) | Thin controllers, service objects, Turbo |
| [Laravel](rules/frameworks/laravel.cursorrules) | Eloquent, Form Requests, policies |
| [Flutter](rules/frameworks/flutter.cursorrules) | Riverpod, widget extraction, Dart 3 |

### Best Practices

| Rule | Description |
|------|-------------|
| [Clean Code](rules/practices/clean-code.cursorrules) | Naming, functions, simplicity |
| [Testing](rules/practices/testing.cursorrules) | AAA pattern, mocking, coverage strategy |
| [Documentation](rules/practices/documentation.cursorrules) | Code docs, READMEs, architecture decisions |
| [Git Workflow](rules/practices/git-workflow.cursorrules) | Commits, branches, PRs, history |
| [Code Review](rules/practices/code-review.cursorrules) | Reviewing, authoring, conventions |
| [Security](rules/practices/security.cursorrules) | Input validation, auth, data protection |
| [Performance](rules/practices/performance.cursorrules) | Profiling, caching, optimization |
| [Accessibility](rules/practices/accessibility.cursorrules) | Semantic HTML, ARIA, keyboard, contrast |

### Tools

| Rule | Description |
|------|-------------|
| [Docker](rules/tools/docker.cursorrules) | Multi-stage builds, security, compose |
| [Terraform](rules/tools/terraform.cursorrules) | State management, modules, safety |
| [Kubernetes](rules/tools/kubernetes.cursorrules) | Pods, networking, operations |
| [CI/CD](rules/tools/ci-cd.cursorrules) | Pipeline design, deployment, security |
| [VS Code / Cursor](rules/tools/vscode.cursorrules) | Workspace setup, debugging, config |

## Usage

1. Browse the rules above and find what fits your project
2. Copy the file to your project root as `.cursorrules`
3. Combine multiple rules if needed — just concatenate them
4. Customize to match your team's conventions

```bash
# Example: grab the TypeScript rules
curl -o .cursorrules https://raw.githubusercontent.com/cursorrulespacks/cursorrules-collection/main/rules/languages/typescript.cursorrules
```

## Combining Rules

Most real projects need a mix. Just concatenate what you need:

```bash
cat rules/languages/typescript.cursorrules rules/frameworks/nextjs.cursorrules rules/practices/testing.cursorrules > .cursorrules
```

## Contributing

We welcome contributions! See [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

**Quick version:** Fork, add your rule in the right category, make sure it's genuinely useful (not generic filler), and open a PR.

## Want More?

These community rules cover the fundamentals. For specialized, battle-tested rule packs with advanced patterns, project-specific configurations, and premium support:

**[cursorrulespacks.gumroad.com](https://cursorrulespacks.gumroad.com)**

Available packs: React/Next.js, TypeScript Strict, Python Backend, Debugging, and a free Starter Pack.

## License

MIT — use these however you want.
