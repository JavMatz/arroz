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

abbr --add conf "cd ~/.config/"
abbr --add bin  "cd ~/.config/local/bin/"
