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

#ls aliases
LS_COLORS='di=0;35'
export LS_COLORS
alias ls='ls -G'

#git aliases
alias gits='git status'

