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
4. Update `README.md` immediately — add install instructions for every new CLI tool, brew cask, or font introduced, and document significant config decisions. Do this as part of the same task, not as a follow-up.

## Neovim Lua files

Do not attempt to fix "Undefined global `vim`" warnings in Neovim Lua files. The `.luarc.json` at `nvim/.config/nvim/.luarc.json` declares `vim` as a known global — it is picked up correctly by lua_ls when the config is stowed to `~/.config/nvim/`. The warning only appears when editing files from within this dotfiles repo, where lua_ls cannot locate that config.

## README policy

`README.md` is the source of truth for setup requirements. Any new dependency (font, CLI tool, brew cask) or significant config decision must be documented there. This applies even when the dependency is introduced indirectly (e.g. a Neovim plugin that requires a system binary).
