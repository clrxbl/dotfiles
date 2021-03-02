source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh

export PATH="/usr/lib/colorgcc/bin/:$PATH" # As per usual colorgcc installation, leave unchanged (don't add ccache)
export CCACHE_PATH="/usr/bin"  # Tell ccache to only use compilers here

#alias yay="env use_tracers=n use_numa=n use_pds=y use_ns=y _microarchitecture=13 yay"

source /etc/grc.zsh
source $HOME/.oh-my-zsh/oh-my-zsh.sh

eval "$(starship init zsh)"

### grc.zsh
#!/usr/bin/env zsh

if [ "$TERM" = dumb ] || (( ! $+commands[grc] ))
then
  return
fi

# Supported commands
cmds=(
    whois \
    wdiff \
    uptime \
    traceroute \
    pv \
    ps \
    ping2 \
    ping \
    nmap \
    netstat \
    mount \
    lsof \
    lsmod \
    lsblk \
    lsattr \
    ls \
    iproute \
    ipneighbor \
    ipaddr \
    ip \
    fdisk \
    du \
    dig \
    diff \
    df \
)

# Set alias for available commands.
for cmd in $cmds ; do
  if (( $+commands[$cmd] )) ; then
    $cmd() {
      grc --colour=auto ${commands[$0]} "$@"
    }
  fi
done

# Clean up variables
unset cmds cmd
