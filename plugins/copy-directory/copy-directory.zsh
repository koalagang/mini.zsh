[ -z "$COPY_CMD" ] && COPY_CMD='wl-copy'
copy-directory(){
  pwd | tr -d '\n' | eval $COPY_CMD
}
zle -N copy-directory
bindkey '^k' copy-directory
