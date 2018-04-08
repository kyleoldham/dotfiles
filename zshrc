# Path to oh-my-zsh
export ZSH=/Users/kxoj/.oh-my-zsh

# Removes duplicate paths on $echo PATH
typeset -U path 

# export PATH=~/.local/bin:$PATH:/usr/bin/python
# path+=("/usr/bin/python")
# export PATH
export PATH="/usr/local/opt/python/libexec/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
  . "/usr/local/opt/nvm/nvm.sh"

alias aws='aws --no-verify-ssl' #........
alias c='clear'

# Loads Theme
ZSH_THEME="robbyrussell"

# Autojump scripts
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

# Display red dots while completing
 COMPLETION_WAITING_DOTS="true"

# Loading Plugins
plugins=(
  git
  osx
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# Makes suggestions visible
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=6'

# Source FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Syntax Highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
