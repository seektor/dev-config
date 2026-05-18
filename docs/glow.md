# glow

Terminal markdown renderer.

## Install

```bash
brew install glow
```

## Usage

```bash
glow file.md          # render a file
glow .                # browse markdown files in current dir (TUI)
glow README.md -p     # force pager mode
```

## Config

`~/.config/glow/glow.yml` — managed via stow.

| Option | Value | Notes |
|--------|-------|-------|
| `style` | `dark` | Matches dark terminal theme |
| `pager` | `true` | Use pager by default |
| `width` | `120` | Max render width |
