# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# No oh-my-zsh theme: the prompt comes from starship (see end of file)
ZSH_THEME=""

# Display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
plugins=(git)

source $ZSH/oh-my-zsh.sh

# === Config shortcuts ===
alias zconfig="nvim ~/.zshrc"
alias reload='source ~/.zshrc'
alias gconfig="nvim ~/.config/ghostty/config"
alias starconfig="nvim ~/.config/starship.toml"

# === Navigation ===
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# === Git ===
alias ga='git add'
alias gc='git commit -m'
alias gf='git fetch --prune'
alias gpl='git pull'
alias gps='git push'
alias gs='git status'
alias gw='git worktree'

# === Python ===
alias p3pip='python3 -m pip'
alias sven='source .venv/bin/activate'
export PYENV_ROOT="$HOME/.pyenv"

# === Ruby ===
if [ -d "/opt/homebrew/opt/ruby/bin" ]; then
  export PATH=/opt/homebrew/opt/ruby/bin:$PATH
  export PATH=`gem environment gemdir`/bin:$PATH
fi

# === Node ===
[ -d "/opt/homebrew/opt/node@20/bin" ] && export PATH="/opt/homebrew/opt/node@20/bin:$PATH"

# === Homebrew libs (make cairo-2 findable) ===
export BREW_LIB='/opt/homebrew/lib'
export DYLD_LIBRARY_PATH=$BREW_LIB:$DYLD_LIBRARY_PATH

# Machine-specific settings that should not be in the public repo
[ -f ~/.zshrc.local ] && source ~/.zshrc.local

# === Prompt ===
eval "$(starship init zsh)"
