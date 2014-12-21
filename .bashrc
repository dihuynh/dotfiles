if [ -f ~/.git-prompt.sh ]; then
  source ~/.git-prompt.sh
  export PS1="\[\e[36;1m\]\u \[\e[32;1m\]\w\[\e[1;33m\]\$(__git_ps1) > \[\e[0m\]"
fi
export PATH="/usr/local/bin:$PATH"
export PATH="$HOME/bin:$PATH"
export PATH="/usr/local/heroku/bin:$PATH"
alias py="python"

eval "$(fasd --init auto)"
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
alias ls='ls -G'

#git aliases
alias gits='git status'
alias gitcleanup='git checkout src/{applications,layouts,workflows,triggers,objects,labels,dashboards,permissionsets}'
alias gitdiff='git diff --color -U0 --minimal --no-prefix --ignore-all-space | egrep -v "index [[:xdigit:]]*..[[:xdigit:]]* [[:xdigit:]]*" | grep -v "diff --git "'
alias gitlog=log
log() {
    git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative
}

alias screenSharing='open /System/Library/CoreServices/Screen\ Sharing.app/'
searchFunction(){
    grep $1 * -i -R -A 2 -B 2 --colour=auto --exclude-dir=target --exclude-dir=config
}
alias search=searchFunction

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH="$PATH:/usr/local/go/bin"

ssh-add ~/.ssh/id_rsa_bb
eval "$(ssh-agent -s)"  

