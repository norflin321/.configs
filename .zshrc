export PATH=$PATH:/opt/homebrew/opt/llvm/bin
export PATH=$PATH:~/.cargo/bin
export PATH=$PATH:~/go/bin
export PATH=$PATH:~/Library/Android/sdk/tools
export PATH=$PATH:~/Library/Android/sdk/tools/bin
export PATH=$PATH:~/Library/Android/sdk/platform-tools

# cd
alias ls="ls -la"
alias rm="rm -rf"
alias cp="cp -R"
alias code="cd /Users/norflin/main/code"
alias pets="cd /Users/norflin/main/code/rockstone/mergicpets_client"

# apps (chmod +x <...>)
alias nvim="~/main/nvim-macos-arm64/bin/nvim"
alias vi="nvim"
alias studio="open -a /Applications/Android\ Studio.app"
alias clang_cpp="/opt/homebrew/Cellar/llvm/19.1.1/bin/clang++"
alias ts-ru="trans -shell -brief ru:en"
alias ts-en="trans -shell -brief en:ru"
alias jira="/Users/norflin/main/code/quick-jira/main"
alias py="python3"
alias pip="pip3"
alias repoavg="~/.config/repoavg.sh"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats ' %b'
setopt prompt_subst
PROMPT='%n %~${vcs_info_msg_0_} ❯ '

gitcommits() {
	git --no-pager log --pretty=format:'%h %ad %s' --date=short --since='2 month ago' --author='Anton Kurtin' --grep="$1"
}
