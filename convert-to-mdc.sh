#!/bin/bash
# Convert all .cursorrules files to .mdc format with proper frontmatter
# Output goes to rules-mdc/ mirroring the rules/ structure

set -e
cd "$(dirname "$0")"

# Glob mappings for language/framework-specific rules
declare -A GLOBS
GLOBS[languages/python]='["*.py"]'
GLOBS[languages/javascript]='["*.js", "*.jsx", "*.mjs"]'
GLOBS[languages/typescript]='["*.ts", "*.tsx"]'
GLOBS[languages/go]='["*.go"]'
GLOBS[languages/rust]='["*.rs"]'
GLOBS[languages/java]='["*.java"]'
GLOBS[languages/csharp]='["*.cs"]'
GLOBS[languages/ruby]='["*.rb"]'
GLOBS[languages/php]='["*.php"]'
GLOBS[languages/swift]='["*.swift"]'
GLOBS[frameworks/react]='["*.jsx", "*.tsx"]'
GLOBS[frameworks/nextjs]='["*.js", "*.jsx", "*.ts", "*.tsx"]'
GLOBS[frameworks/vue]='["*.vue", "*.ts", "*.js"]'
GLOBS[frameworks/svelte]='["*.svelte", "*.ts", "*.js"]'
GLOBS[frameworks/django]='["*.py"]'
GLOBS[frameworks/fastapi]='["*.py"]'
GLOBS[frameworks/express]='["*.js", "*.ts"]'
GLOBS[frameworks/rails]='["*.rb"]'
GLOBS[frameworks/laravel]='["*.php"]'
GLOBS[frameworks/flutter]='["*.dart"]'
GLOBS[frameworks/docker]='["Dockerfile", "docker-compose*.yml"]'

# Description mappings
declare -A DESCS
DESCS[languages/python]="Python best practices: type hints, pathlib, pytest, clean error handling"
DESCS[languages/javascript]="Modern JavaScript: ES6+, async/await, pure functions"
DESCS[languages/typescript]="Strict TypeScript: generics, discriminated unions, no any"
DESCS[languages/go]="Go patterns: error wrapping, goroutines, interfaces"
DESCS[languages/rust]="Rust patterns: ownership, Result types, iterators"
DESCS[languages/java]="Modern Java: records, sealed classes, streams"
DESCS[languages/csharp]="C# patterns: async/await, nullable refs, LINQ"
DESCS[languages/ruby]="Idiomatic Ruby: blocks, RSpec, clean patterns"
DESCS[languages/php]="PHP 8.x+: typed properties, PSR standards"
DESCS[languages/swift]="Swift patterns: SwiftUI, actors, async/await, value types"
DESCS[frameworks/react]="React: hooks, composition, performance patterns"
DESCS[frameworks/nextjs]="Next.js: App Router, Server Components, server actions"
DESCS[frameworks/vue]="Vue 3: Composition API, Pinia, script setup"
DESCS[frameworks/svelte]="Svelte 5: runes, reactivity, stores"
DESCS[frameworks/django]="Django: models, views, ORM best practices"
DESCS[frameworks/fastapi]="FastAPI: Pydantic v2, dependency injection, async"
DESCS[frameworks/express]="Express: middleware, error handling, validation"
DESCS[frameworks/rails]="Rails: thin controllers, service objects, Turbo"
DESCS[frameworks/laravel]="Laravel: Eloquent, Form Requests, policies"
DESCS[frameworks/flutter]="Flutter: Riverpod, widget extraction, Dart 3"
DESCS[practices/clean-code]="Clean code: naming, functions, simplicity"
DESCS[practices/testing]="Testing: AAA pattern, mocking, coverage strategy"
DESCS[practices/documentation]="Documentation: code docs, READMEs, ADRs"
DESCS[practices/git-workflow]="Git workflow: commits, branches, PRs"
DESCS[practices/code-review]="Code review: reviewing, authoring, conventions"
DESCS[practices/security]="Security: input validation, auth, data protection"
DESCS[practices/performance]="Performance: profiling, caching, optimization"
DESCS[practices/accessibility]="Accessibility: semantic HTML, ARIA, keyboard nav"
DESCS[tools/docker]="Docker: multi-stage builds, security, compose"
DESCS[tools/ci-cd]="CI/CD: pipelines, deployment, automation"
DESCS[tools/kubernetes]="Kubernetes: deployments, services, config"
DESCS[tools/terraform]="Terraform: modules, state, best practices"
DESCS[tools/vscode]="VS Code: settings, extensions, workspace config"

mkdir -p rules-mdc/{languages,frameworks,practices,tools}

count=0
for file in rules/**/*.cursorrules; do
    # Get the relative key like "languages/python"
    key="${file#rules/}"
    key="${key%.cursorrules}"
    name=$(basename "$key")
    dir=$(dirname "$key")
    
    outfile="rules-mdc/${dir}/${name}.mdc"
    
    desc="${DESCS[$key]:-}"
    globs="${GLOBS[$key]:-}"
    
    # Build frontmatter
    echo "---" > "$outfile"
    if [ -n "$desc" ]; then
        echo "description: \"$desc\"" >> "$outfile"
    fi
    if [ -n "$globs" ]; then
        echo "globs: $globs" >> "$outfile"
    fi
    echo "alwaysApply: true" >> "$outfile"
    echo "---" >> "$outfile"
    echo "" >> "$outfile"
    
    # Append original content
    cat "$file" >> "$outfile"
    
    count=$((count + 1))
    echo "✅ $key"
done

echo ""
echo "Converted $count files to rules-mdc/"
