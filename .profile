#######################################################
# COMMANDS FOR GIT VERSION CONTROL AND CONFIG         #
#######################################################
alias GIT1='git config --global user.name "Jaran F"; echo "git config --global user.name &quot<NAME>&quot"; echo; echo "git config --get user.name"'
alias GIT2='git config --global user.email "jaranMcLarn@gmail.com"; echo "git --global user.email &quot<EMAIL>&quot"; echo; echo "git config --get user.email"'
alias GIT3="git config credential.helper cache"
alias GIT4="git config credential.helper 'cache --timeout=7200'"
alias gs="git status"
alias ga="git add ."
alias gpull="git pull origin master"
alias gpush="git push origin master"
gac() { git add .; gs;  git commit -m "$1";  }
gar() { git remote add origin ssh://gituJaran@192.168.1.65:225/volume1/git_repos/$1; }
gls() { hashtemp=$(find .git/objects -type f | sort | pcregrep -M "[0-9a-z]{2}\/[0-9a-z]{38}$" | awk -F "/" '{print "printf '\''"$3$4"  '\''; git cat-file -t "$3$4";"}'); eval $hashtemp; }
