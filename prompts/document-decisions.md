# Document Decisions

## Goal

Capture the durable technical decisions from a planning discussion so future work can understand what was chosen, why it was chosen, and which alternatives were deliberately rejected.

## Workflow

1. Locate the target markdown file from the user's request or the project context. If several files are plausible, choose the most specific project or feature planning file; ask only when the target cannot be inferred.
2. Read the existing file before editing. Preserve its structure, headings, tone, and existing decisions.
3. Identify only decisions that are likely to matter later: architecture, APIs, data models, dependencies, deployment, security, testing strategy, ownership boundaries, migrations, compatibility, rollout, or intentionally deferred work.
4. Skip transient discussion, implementation chores, preferences without impact, and decisions that are already documented clearly.
5. Add or update a concise decision section in the target file. Prefer an existing heading such as `Technical Decisions`, `Decisions`, or `Architecture Decisions`; otherwise add `## Technical Decisions` in the most natural planning location.
6. Keep each decision self-contained and short. Do not invent rationale or alternatives; use `None discussed` or `Not discussed` when the planning context does not provide rejected alternatives.

## Entry Format

Use exactly these three fields for each decision:

```markdown
### <short decision title>

- Decision: <what will be done>
- Reason: <why this option was chosen>
- Rejected alternatives: <alternatives considered and why they were not chosen>
```

Prefer one sentence per field. Use multiple rejected alternatives in the same bullet only when needed for clarity.

## Editing Rules

- Keep the file concise; summarize, do not transcribe.
- Merge duplicate or overlapping decisions instead of adding near-identical entries.
- Update stale decisions when the planning discussion supersedes them, preserving useful historical context only when it affects implementation.
- Use neutral technical language. Avoid advocacy, speculation, and meeting-summary phrasing.
- If a decision is tentative, label it explicitly in the decision title or field.
- If the user asks for a separate file and none exists, create a markdown file with a clear title and the `## Technical Decisions` section.

## Quality Check

Before finishing, verify that every recorded item has:

- a concrete decision,
- a reason tied to project constraints or goals,
- rejected alternatives or an explicit note that none were discussed,
- no unnecessary narrative from the planning conversation.
