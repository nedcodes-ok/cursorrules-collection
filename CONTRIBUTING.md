# Contributing

Thanks for wanting to contribute! Here's how to add rules to the collection.

## Adding a New Rule

1. **Fork** the repo and create a branch
2. **Add your `.cursorrules` file** in the appropriate category folder:
   - `rules/languages/` - Programming languages
   - `rules/frameworks/` - Frameworks and libraries
   - `rules/practices/` - Development practices and methodologies
   - `rules/tools/` - Development tools and platforms
3. **Update the README** - add your rule to the appropriate table
4. **Open a PR** with a clear description of what the rule does

## Rule Guidelines

- **Be specific and practical** - rules should directly improve Cursor's output
- **15-40 lines** is the sweet spot. Too short = not useful. Too long = ignored.
- **Avoid generic advice** - "write clean code" isn't helpful. "Use guard clauses to reduce nesting" is.
- **Test your rules** - actually use them with Cursor before submitting
- **Use clear sections** with markdown headers for organization
- **Include the WHY** when it's not obvious - helps people understand and customize

## What Makes a Good Rule

Good:
```
- Use Result<T, E> for recoverable errors, panic only for bugs
- Use the ? operator for error propagation
```

Not useful:
```
- Write good code
- Handle errors properly
```

## File Naming

- Use lowercase with hyphens: `my-framework.cursorrules`
- Match the common name of the technology

## Questions?

Open an issue if you're not sure where something fits or want to discuss a rule before writing it.
