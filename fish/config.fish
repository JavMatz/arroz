if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Config
set -U fish_greeting
fish_vi_key_bindings

# Path
fish_add_path -p ~/.local/bin ~/.config/local/bin

# Enviroment variables 
set -x XDG_CONFIG_HOME ~/.config
set -x XDG_DATA_HOME ~/.local/share
set -x XDG_CACHE_HOME ~/.cache
set -x XDG_DESKTOP_DIR /hdd0/Escritorio/
set -x XDG_DOWNLOAD_DIR /hdd0/Descargas
set -x XDG_TEMPLATES_DIR /hdd0/Plantillas
set -x XDG_PUBLICSHARE_DIR /hdd0/Público
set -x XDG_DOCUMENTS_DIR /hdd0/Documentos
set -x XDG_MUSIC_DIR /hdd0/Música
set -x XDG_PICTURES_DIR /hdd0/Imágenes
set -x XDG_VIDEOS_DIR /hdd0/Vídeos

set -x QT_QPA_PLATFORMTHEME qt5ct
set -x QT_AUTO_SCREEN_SCALE_FACTOR 0
set -x QT_SCALE_FACTOR 1

# Key bindings
# bind --mode default \co mc
# bind --mode insert \co mc
