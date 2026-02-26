# change cursor shape for different vi modes
zle-keymap-select() {
case "$KEYMAP" in
  vicmd) printf '\e[1 q' ;;   # block
  viins|main) printf '\e[5 q' # beam
esac
}
zle -N zle-keymap-select
_fix_cursor() {
  printf '\e[5 q'
}
precmd_functions+=(_fix_cursor)
