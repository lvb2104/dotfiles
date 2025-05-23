# My dotfiles

## Use SSH (if set up)

```bash
git clone git@github.com:lvb2104/dotfiles.git ~/.dotfiles
```

## Or use HTTPS and switch remotes later

```bash
git clone https://github.com/lvb2104/dotfiles.git ~/.dotfiles
```

## Install bat, exa, zsh, oh-my-zsh

```bash
sudo dnf install bat exa zsh
# https://ohmyz.sh/#install
# https://github.com/zsh-users/zsh-autosuggestions?tab=readme-ov-file
# https://github.com/zsh-users/zsh-syntax-highlighting/tree/master
```

## There are better and less manual ways to do this

## investigate install scripts and bootstrapping tools

```bash
ln -s ~/.dotfiles/.zshrc ~/.zshrc
ln -s ~/.dotfiles/.zsh_history ~/.zsh_history
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
ln -s ~/.dotfiles/.starship.toml ~/.config/starship.toml
ln -s ~/.dotfiles/.ideavimrc ~/.ideavimrc # for Jetbrains
```
