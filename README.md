# My dotfiles

## 1. Install on Linux

### 1.1 Use SSH (if set up)

```bash
git clone git@github.com:lvb2104/dotfiles.git ~/.dotfiles
```

### 1.2 Or use HTTPS and switch remotes later

```bash
git clone https://github.com/lvb2104/dotfiles.git ~/.dotfiles
```

## 2. Install bat, exa, zsh, oh-my-zsh, starship

```bash
sudo dnf install bat exa/eza zsh
# https://ohmyz.sh/#install
# https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md#oh-my-zsh
# https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md#oh-my-zsh
# command not found has already been installed
```

## 3. Create symlinks to synced dotfiles

```bash
ln -s ~/Code/dotfiles/.zshrc ~/.zshrc
ln -s ~/Code/dotfiles/starship.toml ~/.config/starship.toml
ln -s ~/Code/dotfiles/.ideavimrc ~/.ideavimrc
ln -s ~/Code/dotfiles/.vimrc ~/.vimrc
```

## 4. Set up Visual Studio 2022 (optional)

-   Go to Options > VsVim > Keyboard > Toggle those shortcuts:

    -   `Ctrl + Alt + Down Arrow` to `VsVim`
    -   `Ctrl + Alt + Up Arrow` to `VsVim`
    -   `Ctrl + R` to `VsVim`

-   Go to Options > Environment > Keyboard > Modify some shortcuts:
    -   `Edit.Duplicate` to `Shift + Alt + J`
    -   `Edit.InsertNextMatchingCaret` to `Ctrl + D`
