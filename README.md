# dotfiles

zsh (oh-my-zsh + starship), vim, git and Ghostty config, managed with [GNU Stow](https://www.gnu.org/software/stow/).
Neovim lives in its own repo: [codingpaula/kickstart.nvim](https://github.com/codingpaula/kickstart.nvim).

Each top-level folder is a stow package whose contents mirror `$HOME`.

## New machine

```sh
# 1. Homebrew + tools
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install stow starship neovim
brew install --cask ghostty font-fira-code-nerd-font

# 2. oh-my-zsh (its installer writes its own ~/.zshrc, remove it afterwards)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
rm ~/.zshrc

# 3. dotfiles
git clone git@github.com:codingpaula/dotfiles.git ~/dotfiles
cd ~/dotfiles && stow zsh vim git starship ghostty

# 4. neovim
git clone git@github.com:codingpaula/kickstart.nvim.git ~/.config/nvim
```

Machine-specific or private settings are not tracked:

- `~/.zshrc.local` for shell settings
- `~/.gitconfig.local` for the git email:

  ```sh
  git config --file ~/.gitconfig.local user.email "you@example.com"
  ```

## Day to day

Edit the files in place (they are symlinks into this repo), then commit and push.
On the other machine: `git pull`, then `reload`.
New config file: move it into a package folder at the same relative path and run `stow <package>`.
