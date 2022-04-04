export PATH="$PATH:$HOME/.local/bin/"
export PATH="$HOME/.config/composer/vendor/bin:$PATH"

# Default stuff
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR="emacs -nw"
else
  export EDITOR="emacs"
fi

export LANG="en_US.UTF-8"
export TODO="$HOME/todo.org"
export WALLS="$HOME/pics/walls"
export ZDOTDIR="$HOME/.config/zsh"

# Start graphical server on tty1 if not already running.
[ "$(tty)" = "/dev/tty1" ] && ! pgrep -x Xorg >/dev/null && exec startx
