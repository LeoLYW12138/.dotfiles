alias sourceconfig='source ~/.bashrc'
alias config='micro ~/.bashrc'
alias startenv='source venv/bin/activate'
alias killros='killall -9 roscore && killall -9 rosmaster' 
alias cddata='cd /mnt/d/coding/c/data-structures/src/'
alias mkbuild='mkdir build && cd build'

alias gs="git status"
alias gc="git commit"
alias df="df -h"
alias d="cd /mnt/d"
alias webapp="cd ~/webapp && yarn start r2c2"

function rmmerged() {
    git fetch -p && for branch in $(git for-each-ref --format '%(refname) %(upstream:track)' refs/heads | awk '$2 == "[gone]" {sub("refs/heads/", "", $1); print $1}'); do git branch -D $branch; done
}

