# spawn a new terminal instances in the current working directory (ctrl+shift+n by default)
# source: https://codeberg.org/dnkl/foot/wiki#zsh
osc7-pwd() {
    emulate -L zsh # also sets localoptions for us
    setopt extendedglob
    local LC_ALL=C
    printf '\e]7;file://%s%s\e\' $HOST ${PWD//(#m)([^@-Za-z&-;_~])/%${(l:2::0:)$(([##16]#MATCH))}}
}
chpwd-osc7-pwd() {
    (( ZSH_SUBSHELL )) || osc7-pwd
}
add-zsh-hook -Uz chpwd chpwd-osc7-pwd

precmd() {
    # jump between prompts (ctrl+shift+z and ctrl+shift+x by default)
    # source: https://codeberg.org/dnkl/foot/wiki#zsh-1
    print -Pn "\e]133;A\e\\"
    
    # pipe last command's output
    # source: https://codeberg.org/dnkl/foot/wiki#zsh-2
    if ! builtin zle; then
        print -n "\e]133;D\e\\"
    fi
}

preexec() {
    # pipe last command's output
    # source: https://codeberg.org/dnkl/foot/wiki#zsh-2
    print -n "\e]133;C\e\\"
}
