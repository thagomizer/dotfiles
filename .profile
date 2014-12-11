export CLICOLOR=true:$CLICOLOR
export P4CONFIG=.p4config
export EDITOR=emacsclient
export PATH=~/bin:/usr/local/bin:$PATH:/Applications/ffmpegX.app//Contents/Resources:/Applications/Xcode.app/Contents/Developer/usr/bin:'/Applications/Racket v6.1/bin'
export CDPATH=~/Links:.
export ARCHFLAGS="-arch x86_64"

if [[ $- == *i* ]]; then
    set -P
    export HISTFILESIZE=10000 # total
    export HISTSIZE=10000     # per session
fi

# Added for railsbridge:
# This is for homebrew:
# PATH=$PATH:/usr/local/bin

alias tutf="bundle exec rake test:units test:functionals"
alias rdm="bundle exec rake db:migrate"
alias l="ls"
alias ll="ls -l"
alias la="ls -la"
alias rconsole="bundle exec rails console"
alias dbreset="bundle exec rake db:migrate db:test:prepare db:seed"
alias zomg='omg `echo ${PWD##*/}`'

# TRYING OUT HUB
eval "$(hub alias -s)"

if test ${TERM-} = "emacs" -o ${TERM-} = "dumb" ; then
    export PAGER=cat
else
    export PAGER=more
fi

# RBENV
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
eval "$(rbenv init -)"
. ~/.ohmygems

# NODE (for work and coffee command)
[[ -s "$HOME/nvm/nvm.sh" ]] && source "$HOME/nvm/nvm.sh"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"


