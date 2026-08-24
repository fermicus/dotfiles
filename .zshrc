export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="eastwood"

plugins=(
    git
    zsh-autosuggestions
    you-should-use
    sudo
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

alias v="nvim"
alias machine="~/.local/bin/machine_report.sh"

stow() {
    if [[ "$PWD" != "$HOME/dotfiles" ]]; then
        echo "[WARNING!] stow is only allowed from ~/dotfiles"
        return 1
    fi

    if [[ "$#" -ne 1 || "$1" != "." ]]; then
        echo "[WARNING!] Only 'stow .' is allowed"
        return 1
    fi

    command stow .
}

# Node version manager + NodeJs
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# bun completions
[ -s "/home/rbx86/.bun/_bun" ] && source "/home/rbx86/.bun/_bun"
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

export PATH="$HOME/.local/bin:$PATH"
