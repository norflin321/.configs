export PATH="/opt/homebrew/opt/llvm/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/go/bin:$PATH"
export PATH="$HOME/Library/Android/sdk/platform-tools:$PATH"
export PATH="$HOME/Library/Android/sdk/tools/bin:$PATH"
export PATH="$HOME/Library/Android/sdk/tools:$PATH"
export PATH="$HOME/Library/Android/sdk:$PATH"

export ANDROID_HOME=~/Library/Android/sdk
export SDKROOT=$(xcrun --show-sdk-path)

# cd
alias ls="ls -la"
alias rm="rm -rf"
alias cp="cp -R"
alias code="cd /Users/norflin/main/code"
alias pets="cd /Users/norflin/main/code/rockstone/mergicpets_client"
alias clear1="clear"
alias clear="clear && printf '\e[3J'"

# apps (chmod +x <...>)
alias nvim="~/main/nvim-macos-arm64/bin/nvim"
alias vi="nvim"
alias studio="open -a /Applications/Android\ Studio.app"
alias clang_cpp="/opt/homebrew/Cellar/llvm/19.1.1/bin/clang++"
alias ts-ru="trans -brief -to ru"
alias ts-en="trans -brief -to en"
alias jira="/Users/norflin/main/code/quick-jira/bin/quick-jira"
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

mycommits() {
	local keyword="$1"
	local days_ago="${2:-30}"
	local last_date=""

	git --no-pager log --pretty=format:'%h %ad %s' --date=short --since="${days_ago} days ago" --author='Anton Kurtin' --grep="$keyword" | while read -r hash date rest; do
		if [[ "$date" != "$last_date" ]]; then
			echo -e "\n$date"
			echo "-------------------"
			last_date="$date"
		fi
		echo "$hash $rest"
	done
}
