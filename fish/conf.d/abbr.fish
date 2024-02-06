# Abbreviation (read: aliases but better?)
abbr --add vim nvim
abbr --add e nvim
abbr --add --position anywhere du "du -h"
abbr --add L --position anywhere --set-cursor  "% | less"
abbr --add !! --position anywhere --function last_history_item

# git
abbr --add g git 
abbr --add gs "git status"
abbr --add gl "git log"
abbr --add gd "git difftool --no-symlinks --dir-diff $1"
abbr --add gc "git commit -v"
abbr --add ga "git add"

# auto sudo
abbr --add dnf "sudo dnf"
abbr --add nth "sudo nethogs"
abbr --add su "sudo su"

abbr --add cp "cp -iv" 
abbr --add mv "mv -iv" 
abbr --add rm "rm -vI" 
abbr --add bc "bc -ql" 
abbr --add mkd "mkdir -pv" 
abbr --add yta "yt-dlp --embed-metadata -i -x -f bestaudio/best --write-thumbnail" 
abbr --add ffmpeg "ffmpeg -hide_banner"

abbr --add ls "ls -h -F -T 0 -N -A --color=auto --group-directories-first" 
abbr --add grep "grep --color=auto" 
abbr --add diff "diff --color=auto" 
abbr --add ip "ip -color=auto"
abbr --add cat bat
abbr --add less bat

abbr --add ka killall 
abbr --add sdn "shutdown -h now" 
abbr --add se sudoedit 

# dir shortcuts
abbr --add conf "cd ~/.config/"
abbr --add bin "cd ~/.config/local/bin/"
abbr --add dev "cd ~/Dev"
abbr --add dwn "cd ~/Downloads/"
abbr --add doc "cd ~/Documents/"
abbr --add img "cd ~/Pictures/"
abbr --add mom "cd ~/Mamá/"
