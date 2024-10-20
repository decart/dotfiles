If you already have a dotfiles repo using chezmoi on GitHub at https://github.com/$GITHUB_USERNAME/dotfiles then you can install chezmoi and your dotfiles with the single command:
```shell
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply $GITHUB_USERNAME
```

Private GitHub repos require other authentication methods:
```shell
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply git@github.com:$GITHUB_USERNAME/dotfiles.git
```
