# Dotfiles for undecV

```bash
GITHUB_USERNAME="UNDECV"
sh -c "$(curl -fsLS get.chezmoi.io)" -- -b $HOME/.local/bin init \
--apply $GITHUB_USERNAME
# --apply git@github.com:$GITHUB_USERNAME/dotfiles.git
```
