alias py="python"

alias a='fasd -a'        # any
alias s='fasd -si'       # show / search / select
alias f='fasd -f'        # file
alias sd='fasd -sid'     # interactive directory selection
alias sf='fasd -sif'     # interactive file selection
alias d='fasd_cd -d'     # cd, same functionality as j in autojump
alias zz='fasd_cd -d -i' # cd with interactive selection
alias v='f -e vim'
LS_COLORS='di=0;35'
export LS_COLORS
alias ls='ls -al -G'

# git 
alias gitCleanBranches='git branch | grep -v "master" | xargs git branch -D'
alias gits='git status'
alias gti='git'
alias master='git co master && git pull origin master'
alias gitlog=log
log() {
    git log --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative -10
}
alias git=hub
alias gitbranch=branch
branch() {
    git for-each-ref --count=5 --sort=-committerdate refs/heads/ --format='%(refname:short)'
}
alias pr=makePr
makePr() {
    az repos pr create --title "$1" --work-item $2
}

# gradle
alias gw='./gradlew'

alias subl="'/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl'"
alias gr="grep -i"

#tmux
alias tmuxls='tmux list-session'
alias tmuxa='tmux attach-session -t'
