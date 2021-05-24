# Some macos/ubuntu differences:

if [[ "$OSTYPE" =~ "darwin*" ]]; then

    # activate homebrew
    eval $(/opt/homebrew/bin/brew shellenv)

else

    # these lines aren't needed on macos if pyenv is installed by homebrew
    export PYENV_ROOT="$HOME/.pyenv"
    export PATH="$PYENV_ROOT/bin:$PATH"

fi

eval "$(pyenv init --path)"