# dotfiles

I don't have many dotfiles, but these are here so I have easy access to the ones I do use. Although there are many good ways to manage your dotfiles, mine are simple enough that a for loop is enough.

``` console
for file in *; do
    cp -r $file $HOME/.$file
done
```

