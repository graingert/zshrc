export WORKON_HOME="$HOME/.virtualenvs"
source /usr/share/zsh-antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found
antigen bundle virtualenvwrapper
antigen bundle rbenv

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-completions

antigen bundle mollifier/cd-gitroot
antigen bundle djui/alias-tips

antigen theme graingert/agnoster-zsh-theme agnoster

# Tell antigen that you're done.
antigen apply
unsetopt cdablevars
export HISTSIZE=9999999
export SAVEHIST=9999999

export GOPATH=$HOME/gopath
export PATH=$PATH:$GOPATH/bin

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
export PATH="$HOME/.bin:$HOME/.npm-packages/bin:$HOME/projects/git-cinnabar:$PATH"

# added by travis gem
[ -f /home/graingert/.travis/travis.sh ] && source /home/graingert/.travis/travis.sh
unalias gm  # graphicsmagick
alias gpff='git pull --ff-only origin master'
alias gprb='git pull --rebase origin master'
alias gprbi='git pull --rebase=interactive origin master'

alias cdu='cd-gitroot'

export PROMPT="%n@%m:%~%(!.#.$)"

if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
        source /etc/profile.d/vte.sh
fi

export PATH="${HOME}/.linuxbrew/bin:${PATH}"
export MANPATH="${HOME}/.linuxbrew/share/man:${MANPATH}"
export INFOPATH="${HOME}/.linuxbrew/share/info:${INFOPATH}"
