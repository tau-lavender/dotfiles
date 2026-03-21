PROMPT="%B%F{magenta}%n%f%b %~> "
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v


alias ls="ls --color"

alias gitlog="git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ar) %C(bold blue)<%an>%Creset'"
alias treeg="tree --gitignore"

alias zconfig="nvim ~/.zshrc"
alias zreload='exec zsh'

alias todo="nvim ~/todo"

alias бля="fuck"

zstyle :compinstall filename '/home/lavender/.zshrc'
autoload -Uz compinit
compinit

eval $(thefuck --alias)
