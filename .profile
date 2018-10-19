#######################################################
# COMMANDS FOR GIT VERSION CONTROL AND CONFIG         #
#######################################################
alias GIT1='git config --global user.name "Jaran F"; echo "git config --global user.name &quot<NAME>&quot"; echo; echo "git config --get user.name"'
alias GIT2='git config --global user.email "jaranMcLarn@gmail.com"; echo "git --global user.email &quot<EMAIL>&quot"; echo; echo "git config --get user.email"'
alias GIT3="git config credential.helper cache"
alias GIT4="git config credential.helper 'cache --timeout=7200'"
alias GIT6="git config --global core.excludesfile ~/.gitignore"
alias gs="git status"
alias ga="git add ."
alias gb="git branch"
alias gpull="git pull origin develop"
alias gpush="git push origin develop"
gac() { git add .; gs;  git commit -m "$1";  }
gar() { git remote add origin ssh://MYGITGUSERNAME@IP-ADDR_OR_HOST:__PORT__/path_to_repo/$1; }
gls() { hashtemp=$(find .git/objects -type f | sort | pcregrep -M "[0-9a-z]{2}\/[0-9a-z]{38}$" | awk -F "/" '{print "printf '\''"$3$4"  '\''; git cat-file -t "$3$4";"}'); eval $hashtemp; }
