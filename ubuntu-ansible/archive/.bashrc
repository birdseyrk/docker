# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
        # We have color support; assume it's compliant with Ecma-48
        # (ISO/IEC-6429). (Lack of such support is extremely rare, and such
        # a case would tend to support setf rather than setaf.)
        color_prompt=yes
    else
        color_prompt=
    fi
fi

=
# export DATASTORE_TYPE=kubernetes
# export KUBECONFIG=~/.kube/config

# export CALICO_DATASTORE_TYPE=kubernetes
# export CALICO_KUBECONFIG=~/.kube/config

# export CLASSPATH=$CLASSPATH:/share/dev/apache-artemis-2.31.2/apache-artemis-2.31.2-bin/apache-artemis-2.31.2/lib/artemis-jms-client-2.31.2.jar

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
# alias k='microk8s kubectl'
# alias kubectl='microk8s kubectl'
# alias kgp='microk8s kubectl get pods'
# alias kgd='microk8s kubectl get developments'
# alias kgs='microk8s kubectl get services'
# alias kga='microk8s kubectl get all'
# alias vs='/snap/bin/code &'
# alias calicoctl="kubectl exec -i -n kube-system calicoctl -- /calicoctl"
