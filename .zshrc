export PATH="$HOME/go/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="/opt/homebrew/opt/rustup/bin:$PATH"

export XDG_CONFIG_HOME="$HOME/.config"

alias rm="trash"
alias ls="ls -la"
alias cp="cp -R"
alias main="cd ~/main"
alias pets="cd ~/main/rockstone/mergicpets_client"
alias clear1="clear"
alias clear="clear && printf '\e[3J'"

alias gh="github ."
alias studio="open -a /Applications/Android\ Studio.app"
alias jira="~/main/quick-jira/bin/quick-jira"

source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats ' %b'
setopt prompt_subst
PROMPT='%n %~${vcs_info_msg_0_} ❯ '
