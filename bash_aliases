
export EDITOR='vi'
alias hg='history | grep'
alias eg='env | grep -i'
alias h='history'
alias gg='git grep'
alias fng='find . | grep'

alias watch='watch -d -c'
alias w.1='watch -n0.1 '
alias w.2='watch -n0.2 '
alias w.5='watch -n0.5 '
alias w1='watch -n1 '
alias w2='watch -n2 '
alias w5='watch -n5 '
alias difs='diff -y -W $(tputs cols)'

. /usr/share/bash-completion/completions/git
alias g="git "
__git_complete g _git_main

alias cl='cal -A 1 -B 1'
alias mdv='mdv -i'

alias parallel='parallel --joblog /tmp/carlin-joblog'
eval "$(fzf --bash)"
