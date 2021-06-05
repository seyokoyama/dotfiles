if [ -f /etc/bash_completion ]; then
  . /etc/bash_completion
fi
if [ -f /etc/bash_completion.d/git-prompt ]; then
  export PS1='\[\033[01;32m\]\u@\h\[\033[01;33m\] \w$(__git_ps1) \n\[\033[01;34m\]\$\[\033[00m\] '
else
  export PS1='\[\033[01;32m\]\u@\h\[\033[01;33m\] \w \n\[\033[01;34m\]\$\[\033[00m\] '
fi

export PATH=$PATH:$HOME/work/tools/node-v14.17.0-linux-x64/bin