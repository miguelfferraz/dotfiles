[[ ! -d "$HOME/.antigen" ]] && git clone https://github.com/zsh-users/antigen.git "$HOME/.antigen"
source "$HOME/.antigen/antigen.zsh"

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle pip
antigen bundle virtualenv
antigen bundle command-not-found

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme https://github.com/denysdovhan/spaceship-zsh-theme spaceship

# Tell Antigen that you're done.
antigen apply

autoload -Uz promptinit
promptinit

export STARSHIP_CONFIG=~/.config/starship.toml

export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

export PATH=/home/miguel/.local/bin:/usr/local/go/bin:$PATH
export QT_QPA_PLATFORM=xcb

# --------------------------------------------------------------------------- #

export DANA_HOME="$HOME/Applications/dana"
export PATH="$PATH:/opt/nvim-linux-x86_64/bin"
export PATH="$PATH:$DANA_HOME"

# Aliases

function process-ram-usage {
  ps aux | grep "$1" | awk '{s+=$6} END {print s/1024 " MB"}'
}

alias pmem=process-ram-usage
alias stopvpn="systemctl stop stagentd.service"


# Python Env Aliases

alias venv="python -m venv .venv"
alias activenv="source .venv/bin/activate"


# Docker Aliases

function drmc-fn {
	docker rm $(docker ps -a -q -f status=exited)
}

function dkc-fn {
	docker kill $(docker ps -a -q -f status=running)
}

function drmi-fn {
	docker rmi $(docker images -q -f dangling=true)
}

function dex-fn {
	docker exec -it $1 ${2:-bash}
}

alias di="docker images"
alias dps="docker ps -a"
alias dsp="docker system prune"
alias dsdf="docker system df"
alias drmc=drmc-fn
alias dkc=dkc-fn
alias drmi=drmi-fn
alias dex=dex-fn
