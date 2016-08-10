# Git
alias gi="git init"
alias gs="git status"
alias gd="git diff"
alias gdh="git diff HEAD"
alias gc="git clone $1 $2"
alias gcm="git commit -m "$1""
alias gaa="git add -A"
alias gpo="git push origin $1"
alias gl="git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias glo="git log --oneline"
alias grhh="git reset --hard HEAD"
alias gcp="git cherry-pick $1"

alias ed='emacs --daemon && nohup emacsclient -c > /dev/null 2>&1&' # Start the emacs daemon and the client
alias df='sh ~/Games/df_linux/dfhack' # Start df and df hack
alias c='xclip -selection clipboard' # Copy to clipboard using 'cat file | c'
alias v='xclip -o' # Paste from clipboard
alias sirc='screen irssi' # Start irssi in GNU screen
alias apt='sudo apt-get'
alias upd='sudo apt-get update && sudo apt-get upgrade'
alias hserv='hugo server' # Start the hugo server
alias hnew='hugo new' # Shortcut
alias tma='tmux attach -t' # Tmux attach session
