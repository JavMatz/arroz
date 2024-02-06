if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Config
set -U fish_greeting
fish_vi_key_bindings
fish_ssh_agent

# Path
fish_add_path -p ~/.local/bin ~/.config/local/bin ~/.cargo/bin

# Enviroment variables 
set -x XDG_CONFIG_HOME ~/.config
set -x XDG_DATA_HOME ~/.local/share
set -x XDG_CACHE_HOME ~/.cache
set -x XDG_DESKTOP_DIR ~/Desktop
set -x XDG_DOWNLOAD_DIR ~/Downloads
set -x XDG_TEMPLATES_DIR ~/Templates
set -x XDG_PUBLICSHARE_DIR ~/Public
set -x XDG_DOCUMENTS_DIR ~/Documents
set -x XDG_MUSIC_DIR ~/Music
set -x XDG_PICTURES_DIR ~/Pictures
set -x XDG_VIDEOS_DIR ~/Videos

# Key bindings
bind --mode default \co 'set old_tty (stty -g); stty sane; lfcd; stty $old_tty; commandline -f repaint'
bind --mode insert \co 'set old_tty (stty -g); stty sane; lfcd; stty $old_tty; commandline -f repaint'

# TOOLS
set -x EDITOR /usr/bin/nvim
set -x VISUAL /usr/bin/nvim
set -x TERMINAL /usr/bin/kitty
set -x BROWSER /usr/bin/firefox
