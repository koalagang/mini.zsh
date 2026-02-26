# populate the start of $ZDOTDIR/mini.zsh with configuration options
# e.g. for auto-ls, you could add:
# AUTO_LS_CMD='eza --all --long --group-directories-first --sort=size --binary --colour=always --icons=always'
source $ZDOTDIR/mini.zsh

# at the end of the file, you should declare the plugins you wish to use inside an array like so:
# mini_zsh_plugins=(auto-ls stash fancy-ctrl-z copy-directory copy-buffer)
for i in "${mini_zsh_plugins[@]}"; do
    source "plugins/$i/$i.zsh"
done
