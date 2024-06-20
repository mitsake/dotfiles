# prompt derived from purity
PROMPT='%F{cyan}%n%f@%F{yellow}%m%f %F{blue}%~ %(?.%F{green}.%F{red})❯%f '

# make grep colourful
alias grep="grep --colour=auto"

# make ls a list, use prefixes for MB etc, be colourful, and follow symlinks
alias ls="ls -lhGH"
    
# use dircolors - requires coreutils to be installed via homebrew
eval "$(gdircolors ~/.dircolors/dracula.dircolors)"

# enable pyenv
eval "$(pyenv init -)"
