# main config
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="sorin"
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh/cache
DISABLE_UPDATE_PROMPT=true

autoload -U select-word-style
select-word-style bash

# oh-my-zsh
plugins=(git osx composer)
source $ZSH/oh-my-zsh.sh
unsetopt correct_all

# main path
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:/usr/X11/bin

# brew
export PATH="$(brew --prefix)/bin:$PATH"

# node
export NODE_PATH="/usr/local/lib/node"

# rbenv
export RBENV_ROOT=/usr/local/var/rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# php
export PATH="$(brew --prefix homebrew/php/php70)/bin:$PATH"
export PATH="$HOME/.composer/vendor/bin:$PATH"

# composer
#function composer() { 
#  COMPOSER="$(which composer)" || { echo "Could not find composer in path" >&2 ; return 1 ; } && mv /usr/local/etc/php/5.5/conf.d/ext-xdebug.ini /usr/local/etc/php/5.5/ext-xdebug.ini.disabled
#  $COMPOSER "$@"
#  STATUS=$?
#  mv /usr/local/etc/php/5.5/ext-xdebug.ini.disabled /usr/local/etc/php/5.5/conf.d/ext-xdebug.ini
#  return $STATUS
#}

# nginx
alias nginx-forward-enable="echo 'rdr pass inet proto tcp from any to any port 80 -> 127.0.0.1 port 8080' | sudo pfctl -ef -"
alias port-forward-disable="sudo pfctl -F all -f /etc/pf.conf"
alias port-forward-list="sudo pfctl -s nat"

# opts: misc
setopt hist_ignore_all_dups
setopt correct

# aliases
alias sf="php app/console"
alias sf2="sf"
alias sfpt="php apps/pt/console"
alias rake="noglob rake"

# locales
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# auto-jump
. `brew --prefix`/etc/profile.d/z.sh

