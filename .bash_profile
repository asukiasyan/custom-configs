NORMAL="\[\033[00m\]"
BLUE="\[\033[01;34m\]"
YELLOW="\[\e[1;33m\]"
GREEN="\[\e[1;32m\]"

export M2_HOME=/Applications/apache-maven-3.6.0
export PATH=$PATH:$M2_HOME/bin
export PATH="$PATH:/Users/asukiasyan/flutter/bin"

source <(kubectl completion bash)
source <(helm completion bash)

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

current_k8s_cluster()
{
   CONTEXT=$(kubectl config current-context)
   if [ -n "$CONTEXT" ]; then
      echo " ${CONTEXT}"
   fi
}

export PS1="${BLUE}\W${YELLOW}\$(parse_git_branch)\$(current_k8s_cluster)${NORMAL} \$ "

alias getns='cat ~/.kube/config | grep namespace'
alias vi='vim'
alias ll='ls -ltrha'
alias ..='cd ../'
alias ...='cd ../../'
alias pullf='git fetch --all --prune && git pull all'
alias tree='tree -C'

setns() {
   kubectl config set-context $(kubectl config current-context) --namespace=$1
}

[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/asukiasyan/Downloads/google-cloud-sdk/path.bash.inc' ]; then . '/Users/asukiasyan/Downloads/google-cloud-sdk/path.bash.inc'; fi

# Line enables shell command completion for gcloud.
if [ -f '/Users/asukiasyan/Downloads/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/asukiasyan/Downloads/google-cloud-sdk/completion.bash.inc'; fi

source <(kubectl completion bash)

# Autocompletion for git
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
export PATH
