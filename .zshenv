# default apps
export EDITOR="nvim"
export TERMINAL="kitty"
export BROWSER="firefox"
export SHELL="/bin/zsh"

# Adds ~/.local/bin and subfolders to $PATH
export PATH="$PATH:${$(find ~/.local/bin -maxdepth 1 -type d -printf %p:)%%:}"
export PATH="$PATH:$HOME/.config/composer/vendor/bin"

# cleaning up home folder
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_SCREENSHOTS_DIR="$HOME/Pictures/screenshots"
# export XAUTHORITY="$HOME"/.Xauthority

export HISTFILE="~/.zsh_history"
#export HISTFILE="${XDG_STATE_HOME}"/bash/history
export ELECTRUMDIR="$XDG_DATA_HOME/electrum"
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java
export JULIA_DEPOT_PATH="$XDG_DATA_HOME/julia:$JULIA_DEPOT_PATH"
export NODE_REPL_HISTORY="$XDG_DATA_HOME"/node_repl_history
export PARALLEL_HOME="$XDG_CONFIG_HOME"/parallel
export TERMINFO="$XDG_DATA_HOME"/terminfo
export TERMINFO_DIRS="$XDG_DATA_HOME"/terminfo:/usr/share/terminfo
export WINEPREFIX="$XDG_DATA_HOME"/wine
export NOTMUCH_CONFIG="${XDG_CONFIG_HOME:-$HOME/.config}/notmuch-config"
export LESSHISTFILE="-"
export WGETRC="${XDG_CONFIG_HOME:-$HOME/.config}/wget/wgetrc"
export MBSYNCRC="${XDG_CONFIG_HOME:-$HOME/.config}/mbsync/config"
export PASSWORD_STORE_DIR="${XDG_DATA_HOME:-$HOME/.local/share}/password-store"
export GOPATH="${XDG_DATA_HOME:-$HOME/.local/share}/go"
export CARGO_HOME="${XDG_DATA_HOME:-$HOME/.local/share}/cargo"
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc
export N_PREFIX="$HOME/.local/bin/n"
export ZDOTDIR="$HOME/.config/zsh"
export PARALLEL_HOME="$XDG_CONFIG_HOME"/parallel
export GRADLE_USER_HOME="$XDG_DATA_HOME"/gradle
export RUSTUP_HOME="$XDG_DATA_HOME"/rustup

export BAT_THEME="Catppuccin-mocha"
export MANPAGER="less -R --use-color -Dd+r -Du+b"

export WINIT_X11_SCALE_FACTOR=1.75 alacritty
export LC_ALL=en_US.UTF-8
