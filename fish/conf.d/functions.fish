# functions
function lfcd
	set tmp (mktemp)
	# `command` is needed in case `lfcd` is aliased to `lf`
	command lf -last-dir-path=$tmp $argv
	if test -f "$tmp"
		set dir (cat $tmp)
		rm -f $tmp
		if test -d "$dir"
			if test "$dir" != (pwd)
				cd $dir
			end
		end
	end
end

function last_history_item
	echo $history[1]
end

function dmount
    udisksctl mount -b $argv
end

function dunmount 
    udisksctl unmount -b $argv
end

function audioToMP3
    ffmpeg -i $argv[1] -acodec mp3 $argv[1].mp3
end

function restartWlan
    rfkill block wlan && sleep 3s && rfkill unblock wlan && echo "Wifi reiniciado"
end

