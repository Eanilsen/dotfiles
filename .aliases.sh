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

# Tmux
alias tma="tmux attach -t $1" # Tmux attach session
alias tn="tmux new-session -s $1" # Tmux new session

# Emacs
alias ed='emacs --daemon && nohup emacsclient -c > /dev/null 2>&1&' # Start the emacs daemon and the client

# Games
alias df='sh ~/Games/df_linux/dfhack' # Start df and df hack

# Clipboard
alias c='xclip -selection clipboard' # Copy to clipboard using 'cat file | c'
alias v='xclip -o' # Paste from clipboard

# Social
alias sirc='screen irssi' # Start irssi in GNU screen

# Aptitude
alias apt='sudo apt-get'
alias upd='sudo apt-get update && sudo apt-get upgrade'

# Hugo
alias hserv='hugo server' # Start the hugo server
alias hnew='hugo new' # Shortcut

# SSH
alias ucp="ssh 18946147@saeshell01p.curtin.edu.au"
alias sftpucp="sftp 18946147@saeshell01p.curtin.edu.au"

# Pandoc
alias mpdf="pandoc -r markdown -o $1 $2"
