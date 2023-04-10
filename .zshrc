export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

autoload -Uz compinit
compinit

plugins=(fzf-tab fast-syntax-highlighting zsh-autosuggestions zsh-history-substring-search zsh-completions)

source $HOME/.oh-my-zsh/oh-my-zsh.sh
source "$(brew --prefix)/etc/grc.zsh"

SPACESHIP_AWS_SHOW=false
SPACESHIP_GCLOUD_SHOW=false
eval "$(starship init zsh)"

export DOCKER_BUILDKIT=1
export EDITOR=nano
export DOCKER_HOST=unix://$HOME/.colima/default/docker.sock
export TESTCONTAINERS_DOCKER_SOCKET_OVERRIDE=$HOME/.colima/default/docker.sock
export PATH="/opt/homebrew/opt/node@18/bin:$PATH"
export PATH="$(brew --prefix)/opt/libpq/bin:$(brew --prefix)/opt/coreutils/libexec/gnubin:${HOME}/.krew/bin:${HOME}/.yarn/bin:/opt/mvnd/bin:${HOME}/.cargo/bin:${PATH}"

alias ls="exa -l --icons -h --git --group-directories-first -F"
alias cat="bat --style=plain --theme=DarkNeon"
alias cd="z"
alias yes=""
alias cdtmp="cd $(mktemp -d)"
alias flushdns="sudo dscacheutil -flushcache;sudo killall -HUP mDNSResponder"
alias sed="gsed" # macOS sed is dumb
alias k="kubectl"
alias kctx="kubectx"

eval "$(zoxide init zsh)"
source <(kubectl completion zsh)

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"