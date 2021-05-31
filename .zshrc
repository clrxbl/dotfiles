source /usr/share/zsh/plugins/fzf-tab/fzf-tab.plugin.zsh
source /usr/share/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh

export PATH="/usr/lib/colorgcc/bin/:$PATH" # As per usual colorgcc installation, leave unchanged (don't add ccache)
export CCACHE_PATH="/usr/bin"  # Tell ccache to only use compilers here

#alias yay="env use_tracers=n use_numa=n use_pds=y use_ns=y _microarchitecture=13 yay"

autoload -Uz compinit
compinit

source /etc/grc.zsh
source $HOME/.k3d-zshrc
source $HOME/.oh-my-zsh/oh-my-zsh.sh

SPACESHIP_AWS_SHOW=false
SPACESHIP_GCLOUD_SHOW=false
eval "$(starship init zsh)"

DOCKER_BUILDKIT=1
EDITOR=nano

export PATH="${PATH}:${HOME}/.krew/bin:${HOME}/.yarn/bin:/opt/mvnd/bin"

alias ls="exa -l --icons -h --git --group-directories-first"
