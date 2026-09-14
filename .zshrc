export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="eastwood"

# ---- [ plugins ] ----------

plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

#---- [ aliases ] ----------

alias v="nvim"
alias pyserve="python3 -m http.server 8111"
alias dotfiles="cd ~/dotfiles/"
alias dotfiles-nvim="cd ~/dotfiles/.config/nvim && nvim"

#---- [yt-dlp] ----------

yt-video() {
    yt-dlp -o "$HOME/Videos/%(title)s.%(ext)s" -f "bv*+ba/b" \
        --merge-output-format mp4 "$@"
}

yt-audio() {
    yt-dlp -o "$HOME/Music/yt-dlp/%(title)s.%(ext)s" -x \
        --audio-format flac "$@"
}

export PATH="$HOME/.local/bin:$PATH"

# bun completions
[ -s "/home/ebx32/.bun/_bun" ] && source "/home/ebx32/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
