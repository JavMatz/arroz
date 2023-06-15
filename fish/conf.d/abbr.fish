# Abbreviation (read: aliases but better?)
abbr --add vim nvim
abbr --add e nvim
abbr --add --position anywhere du "du -h"
abbr --add L --position anywhere --set-cursor  "% | less"
abbr --add !! --position anywhere --function last_history_item

abbr --add pacman "sudo pacman"
abbr --add neth "sudo nethogs"
abbr --add su "sudo su"

abbr --add cp "cp -iv" 
abbr --add mv "mv -iv" 
abbr --add rm "rm -vI" 
abbr --add bc "bc -ql" 
abbr --add mkd "mkdir -pv" 
abbr --add yta "yt-dlp --embed-metadata -i -x -f bestaudio/best --write-thumbnail" 
abbr --add ffmpeg "ffmpeg -hide_banner"

abbr --add gs "git status"
abbr --add gl "git log"
abbr --add gdiff "git difftool --no-symlinks --dir-diff $1"

abbr --add ls "ls -h -F -T 0 -N -A --color=auto --group-directories-first" 
abbr --add grep "grep --color=auto" 
abbr --add diff "diff --color=auto" 
abbr --add ip "ip -color=auto"

abbr --add ka killall 
abbr --add g git 
abbr --add sdn "shutdown -h now" 
abbr --add se sudoedit 

# dir shortcuts
abbr --add conf "cd ~/.config/"
abbr --add bin "cd ~/.config/local/bin/"
abbr --add dev "cd /hdd0/Dev"
abbr --add aur "cd /hdd0/Dev/AUR/"
abbr --add dwn "cd /hdd0/Descargas/"
abbr --add doc "cd /hdd0/Documentos/"
abbr --add img "cd /hdd0/Imágenes/"
abbr --add mom "cd /hdd0/Mamá/"

# newsboat shortcuts
abbr --add ytfeed "newsboat --config-file=~/.config/newsboat/yt_config --url-file=~/.config/newsboat/yt_urls --cache-file=~/.local/share/newsboat/yt_cache.db"
abbr --add twfeed "newsboat --url-file=~/.config/newsboat/tw_urls --cache-file=~/.local/share/newsboat/tw_cache.db"
