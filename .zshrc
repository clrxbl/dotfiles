export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

SAVEHIST=1000000

autoload -Uz compinit
compinit

plugins=(fzf-tab fast-syntax-highlighting zsh-autosuggestions zsh-completions asdf evalcache)

source $HOME/.oh-my-zsh/oh-my-zsh.sh
source "$(brew --prefix)/etc/grc.zsh"

SPACESHIP_AWS_SHOW=false
SPACESHIP_GCLOUD_SHOW=false
_evalcache starship init zsh

export DOCKER_BUILDKIT=1
#export DOCKER_HOST=unix://$HOME/.colima/default/docker.sock
#export TESTCONTAINERS_DOCKER_SOCKET_OVERRIDE=$HOME/.colima/default/docker.sock

export GPG_TTY=$(tty)
export SSH_AUTH_SOCK=${HOME}/.gnupg/S.gpg-agent.ssh

export EDITOR="nano"
export PATH="$(brew --prefix)/opt/libpq/bin:$(brew --prefix)/opt/coreutils/libexec/gnubin:${HOME}/.krew/bin:${HOME
}/.yarn/bin:/opt/mvnd/bin:${HOME}/.cargo/bin:/usr/local/sbin:${ASDF_DATA_DIR:-$HOME/.asdf}/shims:${PATH}"

alias ls="eza -l --icons -h --git --git-repos --group-directories-first -F"
alias tree="eza --icons -h --tree"
alias cat="bat --style=plain --theme=DarkNeon"
alias cd="z"
alias yes=""
alias cdtmp="cd $(mktemp -d)"
alias flushdns="sudo dscacheutil -flushcache;sudo killall -HUP mDNSResponder"
alias sed="gsed" # macOS sed is dumb
alias kubectl="kubecolor"
alias k="kubectl"
alias kctx="kubectx"
alias gpgreset="gpg-connect-agent killagent /bye; gpg-connect-agent updatestartuptty /bye; gpg-connect-agent /bye"

_evalcache zoxide init zsh
_evalcache kubectl completion zsh
compdef kubecolor=kubectl

# pnpm
export PNPM_HOME="/Users/michael/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end

source "$(brew --prefix)/share/google-cloud-sdk/path.zsh.inc"
source "$(brew --prefix)/share/google-cloud-sdk/completion.zsh.inc"

_evalcache atuin init zsh

. ~/.asdf/plugins/java/set-java-home.zsh