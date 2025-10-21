# Use vimode
bindkey -v
export VI_MODE_SET_CURSOR=true

# Switch cursor type depending on mode
function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]]; then
    echo -ne '\e[2 q' # Block
  else
    echo -ne '\e[6 q' # Beam
  fi
}
zle -N zle-keymap-select

# Start zsh in insert mode
function zle-line-init {
  zle -K viins
  echo -ne '\e[6 q'
}
zle -N zle-line-init

# Copy selected in visual mode to system clipboard
function vi-yank-clipboard {
  zle vi-yank
  echo "$CUTBUFFER" | wl-copy
}
zle -N vi-yank-clipboard
bindkey -M vicmd 'y' vi-yank-clipboard
