SSH_OPTS='-o GSSAPIKeyExchange=no -o GSSAPIAuthentication=no -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -o PubkeyAuthentication=no'

GENERIC_PSSH_OPTS="-t 300 -s -p 10 -O StrictHostKeyChecking=no -O UserKnownHostsFile=/dev/null -x '-q'"
PSSH_OPTS="$GENERIC_PSSH_OPTS -i"
alias p="pssh $PSSH_OPTS -h"

if [ -f "/etc/bash_completion.d/git" ]; then
    . /etc/bash_completion.d/git
    [ -f /usr/share/git-core/contrib/completion/git-prompt.sh ] && source /usr/share/git-core/contrib/completion/git-prompt.sh
    #PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '
    PS1='\[\033[00;36m\]\u@\h\[\033[00m\]:\[\033[01;34m\] \w\[\033[00m\] $(__git_ps1 "(%s)")\$ '
fi

. ~/.bash_functions
