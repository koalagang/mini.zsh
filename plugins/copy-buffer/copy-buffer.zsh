[ -z "$COPY_CMD" ] && COPY_CMD='wl-copy'
copy-buffer() {
  print -rn -- $BUFFER | eval $COPY_CMD
}
zle -N copy-buffer
bindkey '^[b' copy-buffer
