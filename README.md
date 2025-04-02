# Use SSH (if set up)...

```bash
git clone git@github.com:lvb2104/dotfiles.git ~/.dotfiles
```

# ...or use HTTPS and switch remotes later.

```bash
git clone https://github.com/lvb2104/dotfiles.git ~/.dotfiles
```

# Install bat, exa, zsh

```bash
sudo dnf install bat exa zsh
```

# There are better and less manual ways to do this;
# investigate install scripts and bootstrapping tools.

```bash
ln -s ~/.dotfiles/.zshrc ~/.zshrc
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
```
