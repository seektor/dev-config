---
allowed-tools: Bash(git add:*), Bash(git status:*), Bash(git diff:*), Bash(git commit:*), Bash(git log:*)
description: Create a git commit — stages everything if nothing is staged
---

## Context

- Current git status: !`git status`
- Staged diff: !`git diff --cached`
- Unstaged diff: !`git diff`
- Current branch: !`git branch --show-current`
- Recent commits: !`git log --oneline -10`

## Your task

1. Look at the staged diff above. If it is non-empty, there are staged files — commit exactly what is staged, do not touch the index.
2. If the staged diff is empty (nothing staged), run `git add -A` to stage all tracked and untracked changes, then commit.
3. Analyse the diff to write a concise commit message:
   - Use the Conventional Commits format: `type(scope): short description` (e.g. `feat(auth): add OAuth2 login`).
   - Common types: `feat`, `fix`, `refactor`, `chore`, `docs`, `style`, `test`, `build`, `ci`.
   - Keep the subject line under 72 characters.
   - Add a short body only when the "why" is non-obvious.
4. Do not push. Do not open a PR. Do not do anything else.
5. Stage (if needed) and commit in a single message — do not split across multiple messages.
