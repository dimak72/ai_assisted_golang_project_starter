This repo describes a process for demonstrating AI-assisted software development during an interview. The goal is to show clear thinking, strong requirements discipline, and effective use of AI tooling while keeping the human engineer in control.

The guide is written for engineers and managers who want to showcase their workflow with Go and Codex, but it can be adapted for other languages, models, and tools.

This is not a comprehensive guide to building production software with AI. In a 45-minute interview, the objective is to deliver a well-scoped, code-reviewed solution that builds, runs, and passes tests, not a finished enterprise product.

## Recommended workflow

1. Create and clone a new repository, then initialize a Go module with `go mod init`.

2. Capture the product requirements in `PROJECT.md`. Include enough detail for a pair-programming partner to understand the scope and expected behavior.

3. If the prompt is vague or ambiguous, ask the interviewer clarifying questions. Document the clarified requirements in `PROJECT.md` before writing code.

4. Use `AGENTS.md` as a starting point for AI guidance. Keep instructions concise. Overly verbose prompts can reduce model quality and make output harder to manage.

   For harness-specific setup:

   - Pick the tool you will use for the interview, such as Codex, Claude Code, Cursor, or another coding agent.
   - Confirm that the harness can run `gofmt`, `go test`, `go vet`, and `go run` in the repository.
   - If the harness uses a different instruction file, copy or symlink `AGENTS.md` to the expected name. For example, Claude Code commonly uses `CLAUDE.md`.
   - Keep local harness and IDE files out of version control.
   - Start fresh threads for major phases so the active context stays focused.

5. Use `TESTING.md` to define your test strategy. Tests are essential when working with AI-generated code.

6. Start planning in a fresh conversation or thread. Use `./prompts/initial-planning.md` to prompt the model and establish a plan.

7. Review the AI-proposed implementation plan carefully. Iterate as needed, then approve it before asking the model to implement.

8. After implementation, run the code and execute tests. Review the generated code for correctness, style, and edge cases.

9. Fix errors and problems iteratively in the same conversation/thread. If the interviewer asks for new requirements, treat them as a separate iteration.

10. Open a new review conversation/thread when the implementation is ready. Use built-in review skills, harness-specific review commands, or `./prompts/review.md` to identify critical issues. If time is limited, communicate that clearly and focus on the highest-risk items.

11. Optionally, perform a security scan or mention security-conscious practices. OpenAI provides curated skills such as Security Best Practices: https://github.com/openai/skills/tree/main/skills/.curated/security-best-practices.

12. Optionally, ask AI to summarize critical decisions in `DECISIONS.md` using `./prompts/document-decisions.md`.

## Iterating on new requirements

If the interviewer provides new requirements, follow this pattern:

1. Evaluate the new requirements and clarify scope. If the request is broad or unrelated, break it into smaller, independent tasks.

2. Talk to the interviewer about the preferred path forward. Explain whether the new work is feasible within the remaining time and what trade-offs exist.

3. Start a new conversation/thread with `./prompts/new-requirement.md`.

4. Review and iterate on the plan, then approve it.

5. Implement the plan, run the program, and execute tests.

6. Ask AI to update `DECISIONS.md` with the final decisions and trade-offs.

## Notes

- Keep the process lightweight and human-driven: define requirements, review AI output, and validate with tests.
- A working solution that builds, runs, and passes tests is the primary goal.
- Communicate clearly with the interviewer about assumptions, trade-offs, and timelines.
- Keep context targeted. Prefer fresh threads for new phases, avoid loading whole directories without a reason, and use search before opening broad sets of files.

## Bonus points

- Consider creating a custom skill to initialize a project or standardize your interview workflow.
- A decision-documenting skill can help capture architecture, requirements, and trade-offs. See `./prompts/document-decisions.md` for an example of decision documentation.
