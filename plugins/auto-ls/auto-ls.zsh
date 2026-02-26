[ -z "$AUTO_LS_CMD" ] && AUTO_LS_CMD='\ls -l -a --color=always'
auto_ls() {
    emulate -L zsh
    eval $AUTO_LS_CMD
}
chpwd_functions=(auto_ls $chpwd_functions)
