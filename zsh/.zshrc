
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(git)

source $ZSH/oh-my-zsh.sh


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

alias c="clear"
alias q="exit"
alias zshconf="nvim ~/.zshrc"
alias lg="lazygit"
alias repo="cd ~/Repositories"
alias bjbr="cd ~/Repositories/bjb"
alias nvconf="nvim ~/.config/nvim"
alias kiconf="nvim ~/.config/kitty/kitty.conf"
alias sshw="ssh ruler@103.82.93.182"
alias srcz="source ~/.zshrc"

# git
alias gs="git status"
alias gswc="git switch -c"
alias gsw="git switch"
alias gfl="git flow"
alias gc="git commit -m"
alias ga="git add"
alias lg="lazygit"


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# bun completions
[ -s "/home/ediruhiat/.bun/_bun" ] && source "/home/ediruhiat/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# pnpm
export PNPM_HOME="/home/ediruhiat/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end



export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/.yarn/bin:$PATH
export PATH="$PATH:/opt/nvim-linux-x86_64/bin"

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
