# ZSH configuration

export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="sorin"

zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh/cache
zstyle ':completion:*:*:docker:*' option-stacking yes
#DISABLE_UPDATE_PROMPT=true

autoload -U select-word-style
select-word-style bash

plugins=(docker git rails yarn)

source $ZSH/oh-my-zsh.sh

#unsetopt correct_all

# User configuration

export EDITOR='vim'

# brew
export PATH="$(brew --prefix)/bin:$PATH"

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

# android
export JAVA_HOME=$(/usr/libexec/java_home)
export ANDROID_HOME=$HOME/Library/Android/sdk
#export ANDROID_SDK_ROOT="$ANDROID_HOME"
#export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools


# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /Users/sobstel/.config/yarn/global/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /Users/sobstel/.config/yarn/global/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /Users/sobstel/.config/yarn/global/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /Users/sobstel/.config/yarn/global/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh
# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[[ -f /Users/sobstel/.config/yarn/global/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh ]] && . /Users/sobstel/.config/yarn/global/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh