export ZSH=/Users/kxoj/.oh-my-zsh

# Paths -> -U removes Dupes
export PATH="/usr/local/opt/python/libexec/bin:$PATH"
export GOPATH=$HOME/Code/go
PATH=$PATH:$GOPATH/bin
typeset -U path

# Theme
ZSH_THEME="robbyrussell"

# j & jl
#[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh
#function jl(){ j "$@" && ls; }

# go fasd
eval "$(fasd --init auto)"
alias j='fasd_cd -d'
alias v='f -e nvim'

### VAULT ###
export VAULT_ADDR=https://mradvault.cloud.pge.com
export PATH=$PATH:/Users/kxoj/Documents

# Display red dots while completing
 COMPLETION_WAITING_DOTS="true"

# Loading Plugins
plugins=(
  osx
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# Makes suggestions visible
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=6'

# FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*"'


test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# Alias's
alias aws='aws --no-verify-ssl' #........
alias c='clear'
alias chr="/Applications/Google\\ \\Chrome.app/Contents/MacOS/Google\\ \\Chrome"
alias g='git'
alias gb='git branch'
alias gaa='git add .'
alias gbc='git checkout -b'
alias gbd='git branch --delete'
alias gcm='git commit --message'
alias gst='git status'

# I can move now
bindkey '^[^[[D' backward-word
bindkey '^[^[[C' forward-word
bindkey '^[[5D' beginning-of-line
bindkey '^[[5C' end-of-line
bindkey '^[[3~' delete-char
bindkey '^?' backward-delete-char

source /Users/kxoj/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $ZSH/oh-my-zsh.sh

# One of these three has to be at the bottom to avoid errors...
export NVM_DIR="$HOME/.nvm"
  . "/usr/local/opt/nvm/nvm.sh"

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /Users/kxoj/Documents/vault vault

# Syntax Highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
