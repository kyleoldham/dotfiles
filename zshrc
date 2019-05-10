export ZSH=/Users/$USER/.oh-my-zsh
$USER = kyle
# Paths -> -U removes Dupes
export PATH="/usr/local/opt/python/libexec/bin:$PATH"
# Not sure why I have to set the gobin on this laptop but I do
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export ANSIBLE_VAULT_PASSWORD_FILE=~/.vault_pass.txt
typeset -U path

# go module support
 export GO111MODULE=on
 
# Theme
ZSH_THEME="robbyrussell"

# go fasd
eval "$(fasd --init auto)"
alias cat='bat'
alias j='fasd_cd -d'
alias v='f -e nvim'
alias r='grip README.md'

## thefuck
#eval $(thefuck --alias)

### VAULT ###
export PATH=$PATH:/Users/$USER/Documents

# Display red dots while completing
 COMPLETION_WAITING_DOTS="true"

# Loading Plugins
plugins=(
  osx
  zsh-autosuggestions
)

source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*"'


test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# Alias's
alias aws='aws --no-verify-ssl' #........
alias c='clear'
alias chr="/Applications/Google\\ \\Chrome.app/Contents/MacOS/Google\\ \\Chrome"
alias g='git'
alias ga='git add'
alias gaa='git add .'
alias gp='git pull'
alias gb='git branch'
alias gbc='git checkout -b'
alias gbd='git branch --delete'
alias gcm='git commit --message'
alias gst='git status'

# New Directory
nd () {
  mkdir "$1"
  cd "$1"
}

# Rebase a branch
grom ()
{
  git fetch origin ${1:-master} && git rebase origin/${1:-master}
}

# I can move now
bindkey '^[^[[D' backward-word
bindkey '^[^[[C' forward-word
bindkey '^[[5D' beginning-of-line
bindkey '^[[5C' end-of-line
bindkey '^[[3~' delete-char
bindkey '^?' backward-delete-char

source $ZSH/oh-my-zsh.sh

# Makes suggestions visible
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=6'

# One of these three has to be at the bottom to avoid errors...
export NVM_DIR="$HOME/.nvm"
  . "/usr/local/opt/nvm/nvm.sh"

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /Users/$user/Documents/vault vault

# Syntax Highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/kyle/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/kyle/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/kyle/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/kyle/Downloads/google-cloud-sdk/completion.zsh.inc'; fi
