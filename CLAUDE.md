# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Purpose

Dotfiles repository managing personal development environment configs via GNU Stow. Each tool gets its own top-level directory mirroring the target filesystem structure relative to `$HOME`.

## Applying configs

```bash
./stow.sh
```

To stow a single package manually:

```bash
stow --target="$HOME" --dir="$(pwd)" <package>
```

To remove symlinks for a package:

```bash
stow --delete --target="$HOME" --dir="$(pwd)" <package>
```

## Adding a new tool

1. Create `<tool>/.config/<tool>/` (or wherever the tool expects its config relative to `$HOME`)
2. Add the config file(s)
3. Add `stow ... <tool>` to `stow.sh`
4. Document any requirements or important decisions in `README.md`

## README policy

Any new dependency (font, CLI tool, brew cask), library, or significant config decision must be documented in `README.md` — this is the source of truth for setup requirements.
