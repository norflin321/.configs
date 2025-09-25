export PATH="/opt/homebrew/opt/llvm/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/go/bin:$PATH"
export PATH="$HOME/Library/Android/sdk/platform-tools:$PATH"
export PATH="$HOME/Library/Android/sdk/tools/bin:$PATH"
export PATH="$HOME/Library/Android/sdk/tools:$PATH"
export PATH="$HOME/Library/Android/sdk:$PATH"

export ANDROID_HOME=~/Library/Android/sdk
export SDKROOT=$(xcrun --show-sdk-path)
export XDG_CONFIG_HOME="$HOME/.config"

alias rm="trash"
alias ls="ls -la"
alias cp="cp -R"
alias main="cd /Users/norflin/main"
alias pets="cd /Users/norflin/main/rockstone/mergicpets_client"
alias clear1="clear"
alias clear="clear && printf '\e[3J'"

alias nvim="/Users/norflin/main/nvim-macos-arm64/bin/nvim"
alias vim="nvim"
alias vi="nvim"
alias lg="lazygit"
alias studio="open -a /Applications/Android\ Studio.app"
alias clang_cpp="/opt/homebrew/Cellar/llvm/19.1.1/bin/clang++"
alias ts-ru="trans -brief -to ru"
alias ts-en="trans -brief -to en"
alias jira="/Users/norflin/main/quick-jira/bin/quick-jira"
alias py="python3"
alias pip="pip3"
alias repoavg="~/.config/repoavg.sh"
alias zls="~/main/zls"
alias gc="git add . && git commit -am '...'"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats ' %b'
setopt prompt_subst
PROMPT='%n %~${vcs_info_msg_0_} ❯ '
