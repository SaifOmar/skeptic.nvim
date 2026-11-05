# skeptic.nvim

Skeptic colorscheme for [Neovim](https://neovim.io/) — the Neovim face of the
[Skeptic Omarchy theme](https://github.com/SaifOmar/omarchy-skeptic-theme).

Skeleton of this theme is ported from
[naysayer-theme.el](https://github.com/nickav/naysayer-theme.el) by nickav —
the Emacs theme inspired by Jonathan Blow's compiler livestreams — onto
[aether.nvim](https://github.com/omacom/aether.nvim), which keeps
[LazyVim](https://github.com/LazyVim/LazyVim)'s plugin groups.

Deep teal background, warm tan text, sage comments, teal strings, white
keywords — just like the editor in those streams.

![screenshot](https://raw.githubusercontent.com/SaifOmar/omarchy-skeptic-theme/main/backgrounds/1-naysayer.jpg)

## Install

### LazyVim

```lua
return {
  {
    "SaifOmar/skeptic.nvim",
    dependencies = { { "omacom/aether.nvim", branch = "v3" } },
    priority = 1000,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "skeptic",
    },
  },
}
```

### lazy.nvim (plain)

```lua
{
  "SaifOmar/skeptic.nvim",
  dependencies = { { "omacom/aether.nvim", branch = "v3" } },
  priority = 1000,
  config = function()
    vim.cmd.colorscheme("skeptic")
  end,
}
```

## Credits

- [naysayer-theme.el](https://github.com/nickav/naysayer-theme.el) by nickav — the Emacs original.
- [aether.nvim](https://github.com/omacom/aether.nvim) — the base colorscheme engine.

## License

GPL-3.0, like the original naysayer-theme.el. See [LICENSE](LICENSE).
