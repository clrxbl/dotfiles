source /usr/share/zsh/plugins/fzf-tab/fzf-tab.plugin.zsh
source /usr/share/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh

export PATH="/usr/lib/colorgcc/bin/:$PATH" # As per usual colorgcc installation, leave unchanged (don't add ccache)
export CCACHE_PATH="/usr/bin"  # Tell ccache to only use compilers here

autoload -Uz compinit
compinit

source /etc/grc.zsh
source $HOME/.oh-my-zsh/oh-my-zsh.sh

SPACESHIP_AWS_SHOW=false
SPACESHIP_GCLOUD_SHOW=false
eval "$(starship init zsh)"

export DOCKER_BUILDKIT=1
export EDITOR=nano

export PATH="${PATH}:${HOME}/.krew/bin:${HOME}/.yarn/bin:/opt/mvnd/bin"

alias ls="exa -l --icons -h --git --group-directories-first"
alias cat="bat --paging=never --theme=DarkNeon"
alias cd="z"

export BROWSER=wslview

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/bin/bitcomplete bit

eval "$(zoxide init zsh)"

source /home/michael/.config/broot/launcher/bash/br
