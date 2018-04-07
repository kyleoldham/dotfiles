# dotfiles

Currently using nvim, and zsh shell. 
Potentially switch to vim+fish in the future.

Run these to enable complete on ZSH: 
autoload bashcompinit
bashcompinit

Run this to make silver searcher use ag: complete -F _fzf_path_completion -o default -o bashdefault ag

If UpdateRemotePlugins b/c deoplete: 
pip install neovim --upgrade
