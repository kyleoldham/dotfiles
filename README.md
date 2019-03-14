# dotfiles

## Current Vim Setup
- `https://github.com/amix/vimrc`
- `https://github.com/Valloric/YouCompleteMe#mac-os-x`
- Install MacVim: `https://github.com/macvim-dev/macvim/releases`
- `:PluginInstall`
- `ln -s /usr/local/bin/mvim vim`
 ```
 cd ~/.vim/bundle/YouCompleteMe
./install.py --clang-completer --go-completer
```
- Also, A thing to note, make sure your vim is installed via brew if on macOS

## Old
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
