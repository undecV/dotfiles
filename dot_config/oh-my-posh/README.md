# undecv Catppuccin themes for Oh My Posh

A small family of [Oh My Posh](https://ohmyposh.dev/) themes based on the original [`catppuccin.omp.json`](https://github.com/JanDeDobbeleer/oh-my-posh/blob/main/themes/catppuccin.omp.json).

The themes use the official [Catppuccin](https://catppuccin.com/) Latte, Frappé, Macchiato, and Mocha palettes.

## Design

The themes are designed for everyday local and SSH shell use, with a compact two-line prompt:

```text
[user@host] [path] [git] [local datetime] [execution result]
> command
```

The full variants use Nerd Font and Powerline glyphs.

The `minimal` variants use only standard Unicode characters and do not require a Nerd Font, making them more suitable for SSH sessions, mobile terminals, and other environments where patched fonts may not be available.

Features include:

* Catppuccin Latte, Frappé, Macchiato, and Mocha variants
* Nerd Font and Unicode-only `minimal` variants
* Two-line prompt with transient prompt support
* Username and hostname
* Current path
* Git branch when applicable
* Local date, time, and timezone
* Execution time for commands taking at least one second
* Exit code display on command failure
* Distinct normal and root/administrator prompts

## Attribution

These themes are modified from the Oh My Posh `catppuccin.omp.json` theme.

Oh My Posh is Copyright 2022 Jan De Dobbeleer and licensed under the MIT License.

The color palettes are from the Catppuccin project, Copyright 2021 Catppuccin, also licensed under the MIT License.
