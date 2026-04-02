export EDITOR=nvim
export VISUAL=nvim

# PROMPT="%B%F{magenta}%n%f%b %~> "
PROMPT="%B%F{magenta}%n%f%b@%m %~> "
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

lf () {
    tmp="/tmp/LF_LAST_DIR_PATH"

    # `command` is needed in case `lfcd` is aliased to `lf`
    command lf "$@"
    if [ -f "$tmp" ]; then
        cd "$(cat "$tmp")"
    fi
}

zstyle :compinstall filename '/home/lavender/.zshrc'
autoload -Uz compinit
compinit

eval $(thefuck --alias)


if ! pgrep -u "$USER" ssh-agent > /dev/null; then
    ssh-agent -t 1h > "$XDG_RUNTIME_DIR/ssh-agent.env"
fi
if [ ! -f "$SSH_AUTH_SOCK" ]; then
    source "$XDG_RUNTIME_DIR/ssh-agent.env" >/dev/null
fi
