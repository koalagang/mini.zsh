# NOTE: you should populate the start of $ZDOTDIR/mini.zsh with configuration options
# e.g. for auto-ls, you could add:
# AUTO_LS_CMD='eza --all --long --group-directories-first --sort=size --binary --colour=always --icons=always'
source $ZDOTDIR/mini.zsh

# find the directory which this file is located in
0="${${ZERO:-${0:#$ZSH_ARGZERO}}:-${(%):-%N}}"
0="${${(M)0:#/*}:-$PWD/$0}"

# NOTE: at the end of the file, you should declare the plugins you wish to use inside an array like so:
# mini_zsh_plugins=(auto-ls stash fancy-ctrl-z copy-directory copy-buffer)
for i in "${mini_zsh_plugins[@]}"; do
    source "${0:A:h}/plugins/$i/$i.zsh"
done
