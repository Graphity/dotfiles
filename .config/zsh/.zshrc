# Graphite: .zshrc

autoload -U colors && colors
source /usr/share/zsh/themes/graphite.zsh-theme

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# History in cache directory:
if [[ ! -f "$HOME/.cache/zsh/history" ]]; then
    mkdir ~/.cache/zsh 2> /dev/null | touch ~/.cache/zsh/history
fi
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.cache/zsh/history

# emacs mode
bindkey -e

# Use emacs keys in tab complete menu:
bindkey -M menuselect "^B" backward-char
bindkey -M menuselect "^P" up-line-or-history
bindkey -M menuselect "^F" forward-char
bindkey -M menuselect "^N" down-line-or-history
bindkey -M menuselect "left" backward-char
bindkey -M menuselect "down" down-line-or-history
bindkey -M menuselect "up" up-line-or-history
bindkey -M menuselect "right" forward-char

# Add functionality to mouseless selection
del-region() {
  if ((REGION_ACTIVE)) then
    zle kill-region
  else 
    zle backward-delete-char
  fi
}
zle -N del-region

copy-region() {
  if ((REGION_ACTIVE)) then
    zle copy-region-as-kill
    print -rn $CUTBUFFER | xclip -selection c
    ((REGION_ACTIVE = 0))
  fi
}
zle -N cut-region

yank-region() {
    CUTBUFFER=$(xclip -o)
    zle yank
}
zle -N yank-region

cut-region() {
  copy-region
  zle kill-region 
}
zle -N copy-region

# Add shift + arrow key selection
shift-arrow() {
  ((REGION_ACTIVE)) || zle set-mark-command
  zle $1
}
shift-left() shift-arrow backward-char
shift-right() shift-arrow forward-char
zle -N shift-left
zle -N shift-right

bindkey "^?" del-region
bindkey "^[w" copy-region
bindkey "^Y" yank-region
bindkey "^W" cut-region
bindkey $terminfo[kLFT] shift-left
bindkey $terminfo[kRIT] shift-right

[ -f "$HOME/.config/zsh/.alias" ] && source "$HOME/.config/zsh/.alias"
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
