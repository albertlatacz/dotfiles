if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

eval "$(/opt/homebrew/bin/brew shellenv)"

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

# Ruby
source $(brew --prefix)/opt/chruby/share/chruby/chruby.sh
source $(brew --prefix)/opt/chruby/share/chruby/auto.sh
chruby ruby-3.1.3

export PATH="$HOME/.jenv/bin:$HOME/bin:/usr/local/bin:/usr/local/sbin:$PATH"

eval "$(jenv init -)"

source ~/.dotfiles/zsh/aliases


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


