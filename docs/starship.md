# Starship

## Install

```bash
brew install starship
```

Add to `~/.zshrc`:

```bash
eval "$(starship init zsh)"
```

## Theme

Catppuccin Mocha palette — defined inline in `starship.toml`.

## Prompt segments

| Segment | Info shown |
|---------|-----------|
| OS icon | macOS / Linux symbol |
| Directory | Truncated to 3 parts; repo-root aware |
| Git branch | Branch name with ` ` icon |
| Git status | Dirty/ahead/behind indicators |
| Node.js | Version when in a Node project |
| Rust | Version when in a Rust project |
| Go | Version when in a Go project |
| Python | Version when in a Python project |
| Command duration | Shown when last command took ≥ 2 s |
| Prompt character | `❯` (green on success, red on error) |
