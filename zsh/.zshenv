#PATH
export NPM_PACKAGES="$HOME/.local/bin/.npm-packages"
export PATH="$PATH:/home/erick/.local/bin"
export PATH="$PATH:$NPM_PACKAGES/bin"
export MANPATH="${MANPATH-$(manpath)}:$NPM_PACKAGES/share/man"
export JAVA_HOME="/usr/lib/jvm/java-17-openjdk"
export PATH="$JAVA_HOME/bin:$PATH"
export ANDROID_SDK_ROOT='/opt/android-sdk'
export PATH="$PATH:$ANDROID_SDK_ROOT/platform-tools/"
export PATH="$PATH:$ANDROID_SDK_ROOT/tools/bin/"
export PATH="$PATH:$ANDROID_ROOT/emulator"
export PATH="$PATH:$ANDROID_SDK_ROOT/tools/"

#XDG_DIRS
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DESKTOP_DIR="$HOME/Desktop"
export XDG_DOWNLOAD_DIR="$HOME/Descargas"
export XDG_TEMPLATES_DIR="$HOME/Plantillas"
export XDG_PUBLICSHARE_DIR="$HOME/Público"
export XDG_DOCUMENTS_DIR="$HOME/Documentos"
export XDG_MUSIC_DIR="$HOME/Música"
export XDG_PICTURES_DIR="$HOME/Imágenes"
export XDG_VIDEOS_DIR="$HOME/Vídeos"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export ZSH_COMPDUMP="$XDG_CACHE_HOME/zsh"

# Desktop portal
export XDG_CURRENT_DESKTOP=XFCE

# Qt apps theme
export QT_QPA_PLATFORMTHEME=qt5ct
export QT_LOGGING_RULES="qt.svg*.warning=false"

# Tool
export EDITOR="/usr/bin/nvim"
export VISUAL="/usr/bin/nvim"
export TERMINAL="/usr/bin/xfce4-terminal"
export BROWSER="/usr/bin/firefox"
export CHROME_EXECUTABLE="/usr/bin/brave"
