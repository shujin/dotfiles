export ZSH=~/.oh-my-zsh
export FPATH="$HOME/.zshf:$FPATH"

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

autoload spectrum && spectrum

ZSH_THEME="agnoster"

plugins=(git osx zsh-syntax-highlighting)

bindkey '[C' forward-word
bindkey '[D' backward-word

# Skip to start/end of line with cmd-arrow
bindkey '[E' beginning-of-line
bindkey '[F' end-of-line

# Delete word with opt-backspace/opt-delete
bindkey '[G' backward-kill-word
bindkey '[H' kill-word

# Delete line with cmd-backspace
bindkey '[I' kill-whole-line

setopt auto_cd # If you type foo, and it isn't a command, and it is a directory in your cdpath, go there
setopt append_history # Allow multiple terminal sessions to all append to one zsh command history
setopt extended_history # save timestamp of command and duration
setopt hist_expire_dups_first # when trimming history, lose oldest duplicates first
setopt hist_ignore_dups # Do not write events to history that are duplicates of previous events
setopt hist_reduce_blanks # Remove extra blanks from each command line being added to history

setopt always_to_end # When completing from the middle of a word, move the cursor to the end of the word    
setopt prompt_subst # Enable parameter expansion, command substitution, and arithmetic expansion in the prompt

# Enable color in grep
export GREP_OPTIONS='--color=auto'
export GREP_COLOR='3;33'

# User configuration

export PATH="$PATH:/usr/local/bin:/usr/local/sbin:/usr/local/share/npm/bin"

source $ZSH/oh-my-zsh.sh

alias zshconfig="subl ~/.zshrc"
alias ohmyzsh="subl ~/.oh-my-zsh"

# ssh servers aliases
alias servername="ssh -i /path/to/pem user@server.location"

# git aliases
alias gl="git pull"
alias gp="git push"
alias gc="git commit -m"
alias gco="git checkout"
alias gb="git branch"
alias gstat="git status"
alias ga="git add ."

# commands aliases
alias ll="ls -ahloF"
alias h="history|grep -i"
alias s="sudo"
alias milkyway="cd /Volumes/Milky\ Way/"
alias h2g2="cd /Volumes/H2G2/"

export NVM_DIR="$HOME/.nvm"
  . "/usr/local/opt/nvm/nvm.sh"

autoload -U add-zsh-hook
load-nvmrc() {
	  if [[ -f .nvmrc && -r .nvmrc ]]; then
			    nvm use
					  fi
}
add-zsh-hook chpwd load-nvmrc

export PATH="~/.rbenv/shims:${PATH}"
export RBENV_SHELL=zsh
