source ~/.zsh/antigen.zsh
source ~/.zsh/powerlevel10k/powerlevel10k.zsh-theme

# Aliases
if [ -f ~/.bash_aliases ]; then
   . ~/.bash_aliases
fi

# Composer globals
if [ -d ~/.config/composer/vendor/bin ]; then
    export PATH=~/.config/composer/vendor/bin:$PATH
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle git-lfs
antigen bundle vagrant
antigen bundle command-not-found

# Extra bundles
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-history-substring-search

# Tell Antigen that you're done.
antigen apply
