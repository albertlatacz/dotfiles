if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source $(brew --prefix)/opt/antigen/share/antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundle command-not-found
antigen bundle history
antigen bundle zsh-users/zsh-completions src
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle git
antigen bundle pip

antigen theme romkatv/powerlevel10k

antigen apply

export PATH=$HOME/bin:/usr/local/bin:/usr/local/sbin:$PATH

source ~/.dotfiles/zsh/aliases
