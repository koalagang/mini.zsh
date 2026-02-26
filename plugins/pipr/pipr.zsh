pipr_widget(){
    # put contents of buffer (LBUFFER) into pipr
    # and then when you exit pipr, change LBUFFER to what you wrote in pipr
    LBUFFER="$(pipr -d "${LBUFFER}")"
    # refresh the buffer
    # this is needed to make sure stuff like syntax highlighting is applied correctly
    zle .reset-prompt
}

# bind widget to ctrl+p
zle -N pipr_widget
bindkey '^p' pipr_widget
