 
# My custom aliases for zsh

# Don't change. The following determines where Oh-My-Zsh is installed.
omz=$HOME/.oh-my-zsh

# My Alias Editing
alias ae='vim $omz/custom/my-aliases.zsh' #my-alias edit
alias ar='source $omz/custom/my-aliases.zsh'  #my-alias reload

# Zsh Profile Editing
alias ze='vim ~/.zshrc'  #zshrc edit
alias zr='source ~/.zshrc'  #zshrc reload

# show me files matching "ls grep"
alias lsg='ll | grep'

alias ka9='killall -9'
alias k9='kill -9'

# Disk usage and finding directory or files
alias dud='du -d 1 -h'
alias duf='du -sh *'
alias fd='find . -type d -name'
alias ff='find . -type f -name'

# History
alias h='history'
alias hgrep="fc -El 0 | grep"

# Terminal Proxy
function terminal_proxy() {
	export http_proxy=${1}
	export HTTPS_PROXY=${1}
	export HTTP_PROXY=${1}
}

function unset_terminal_proxy() {
	unset http_proxy
	unset HTTPS_PROXY
	unset HTTP_PROXY
}

# Alias for Git Custom
function git_setproxy() {
	git config --global http.proxy ${1}
	git config --global https.proxy ${1}
}
function git_unsetproxy() {
	git config --global --unset http.proxy
	git config --global --unset https.proxy
}

# Check what process is listening on port
function whos_listening () {
	lsof -n -i4TCP:$1 | grep LISTEN
}

# Base64 encode function
function base64_enc() {
    echo -n ${1} | base64
}

# Base64 decode function
function base64_dec() {
    echo -n ${1} | base64 -D
}

function count_files() {
    if [ "$1" ]
    then
        find . -type f -name "${1}" | wc -l
    else
        find . -type f | wc -l
    fi
}

function debug_zsh() {
    zsh -xv 2>&1 | ts -i "%.s" > $HOME/zsh_startup.log
}

