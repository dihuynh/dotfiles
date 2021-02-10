source ~/.bash_aliases

if [ -f ~/.git-prompt.sh ]; then
 source ~/.git-prompt.sh
 export PS1="\[\e[35;1m\]\T \[\e[32;1m\]\W\[\e[1;33m\]\$(__git_ps1) > \[\e[0m\]"
fi

if [ -f ~/.git-completion.bash ]; then
    . ~/.git-completion.bash
fi

export NVM_DIR="/Users/di.huynh/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

#fasd
eval "$(fasd --init auto)"

export PHANTOMJS_BIN=/usr/local/bin/phantomjs

# bash history
export HISTCONTROL=ignoredups:erasedups  # Avoid duplicates
export HISTSIZE=100000                   # big big history
export HISTFILESIZE=100000               # big big history
# After each command, append to history 
export PROMPT_COMMAND="history -a; $PROMPT_COMMAND"

# Run nvm automatically if .nvmrc exists
enter_directory() {
  if [[ $PWD == $PREV_PWD ]]; then
    return
  fi

  PREV_PWD=$PWD
  [[ -f ".nvmrc" ]] && nvm use
}

export PROMPT_COMMAND=enter_directory

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="/Users/di.huynh/.rvm/gems/ruby-2.2.1/bin:$PATH"
export JAVA_HOME=$(/usr/libexec/java_home) PATH=$PATH:$JAVA_HOME/bin export JAVA_HOME


#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/di.huynh/.sdkman"
[[ -s "/Users/di.huynh/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/di.huynh/.sdkman/bin/sdkman-init.sh"

