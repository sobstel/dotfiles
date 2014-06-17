# main config
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="sorin"
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh/cache
DISABLE_UPDATE_PROMPT=true

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
export PATH="/usr/local/share/npm/bin:$PATH"

# rebenv
export RBENV_ROOT=/usr/local/var/rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# php
export PATH="$PATH:/usr/local/Cellar/php54/5.4.26/bin"

# opts: misc
setopt hist_ignore_all_dups
setopt correct

# opessl
export SSL_CERT_FILE=/usr/local/opt/curl-ca-bundle/share/ca-bundle.crt

