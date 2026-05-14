# AGENTS.md

## Engineering Principles

- Follow KISS, DRY and SOLID principles
- Optimize for readability and explainability.
- Avoid unnecessary abstractions.
- Use golang version 1.24.x
- Prefer standard library packages.
- Prefer `errors.Is` and `errors.As` over string matching for errors.
- Return errors from library code; do not panic for expected failure paths.
- Avoid `init()` for business logic or hidden setup.
- Keep concurrency explicit and testable; avoid goroutines without clear ownership.

## Coding Rules

- Run `gofmt -w .` and `go test ./...` before finishing. Refer to TESTING.md for the full quality bar.
- Keep functions focused.
- Avoid premature optimization.

Contains:
- Project description lives in PROJECT.md
- Testing rules are in TESTING.md
- Docs live in /docs
- High-level architecture lives in /docs/ARCHITECTURE.md

Rules:
- Only open files that are relevant to the current task
- Do not load the entire docs directory unnecessarily
- Never delete or relax tests to make them pass
- If behavior changes, update tests accordingly
