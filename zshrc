# main config
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="sorin"
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh/cache
DISABLE_UPDATE_PROMPT=true

autoload -U select-word-style
select-word-style bash

# oh-my-zsh
plugins=(git osx)
source $ZSH/oh-my-zsh.sh
unsetopt correct_all

# main path
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:/usr/X11/bin

# brew
export PATH="$(brew --prefix)/bin:$PATH"

# node
#export PATH="/usr/local/opt/node@8/bin:$PATH"

# nodeenv
eval "$(nodenv init -)"

# rbenv
export RBENV_ROOT=/usr/local/var/rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# direnv
eval "$(direnv hook zsh)"

# opts: misc
setopt hist_ignore_all_dups
setopt correct

# aliases
alias rake="noglob rake"
alias dcr="docker-compose run"
alias dcu="docker-compose up"

# locales
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# auto-jump
. `brew --prefix`/etc/profile.d/z.sh

