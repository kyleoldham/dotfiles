# dotfiles

Currently using nvim, and zsh shell.  
dein for plugin managment
Potentially switch to vim+fish in the future.  


### Run these to enable complete on ZSH:  
autoload bashcompinit  
bashcompinit  


### Run this to make silver searcher use rg:  
complete -F _fzf_path_completion -o default -o bashdefault rg  


### If UpdateRemotePlugins b/c deoplete:  
pip install neovim --upgrade


### Clone Autocomplete:  
git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions  


### Color profile:  
iTerm → preferences → profiles → colors → load presets
