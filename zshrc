# prompt derived from purity
PROMPT='%F{cyan}%n%f@%F{yellow}%m%f %F{blue}%~ %(?.%F{green}.%F{red})❯%f '

# make grep colourful
alias grep="grep --colour=auto"

# since I use mac and ubuntu, this block checks the os and then sets some things as required.
if [[ "$OSTYPE" =~ "darwin*" ]]; then

    # activate homebrew
    eval $(/opt/homebrew/bin/brew shellenv)
    
    # make ls a list, use prefixes for MB etc, be colourful, and follow symlinks
    alias ls="ls -lhGH"
    
    # use dircolors - requires coreutils to be installed via homebrew
    eval "$(gdircolors ~/.dircolors/dracula.dircolors)"

else
    
    # same ls options and dircolors
    alias ls="ls -lhH --color"
    eval "$(dircolors ~/.dircolors/dircolors.ansi-dark)"
    
    # these lines aren't needed on macos if pyenv is installed by homebrew
    export PYENV_ROOT="$HOME/.pyenv"
    export PATH="$PYENV_ROOT/bin:$PATH"
fi

# enable pyenv
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
