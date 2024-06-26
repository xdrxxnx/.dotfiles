# LINES ADDED BY zsh-newuser-install #
# Set up the autocomplete
autoload -Uz compinit
compinit
_comp_options+=(globdots)

# Set up the prompt
autoload -Uz promptinit
promptinit
prompt adam1

setopt histignorealldups sharehistory

# Use emacs keybindings even if our EDITOR is set to vi
bindkey -e

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'
# END OF LINES ADDED BY zsh-newuser-install #

# LINES ADDED BY adriano #
# source stuff
## rust
source "$HOME/.cargo/env"
## asdf
source "$HOME/.asdf/asdf.sh"
## spaceship
source "$HOME/.zsh/spaceship/spaceship.zsh"

# aliases
alias ea="exa -a"
alias ela="exa -la"
alias gs="git status"
alias ga="git add"
alias gcm="git commit -m"
alias gps="git push"
alias gpl="git pull"
alias please="sudo"
alias cloudflare="echo '[*] é warp-cli...'"
# END OF LINES ADDED BY adriano #

# LINES ADDED BY alacritty #
fpath+=${ZDOTDIR:-~}/.zsh_functions
# END OF LINES ADDED BY alacritty #

printf '\eP$f{"hook": "SourcedRcFileForWarp", "value": { "shell": "zsh"}}\x9c'
