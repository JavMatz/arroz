function last_history_item
	echo $history[1]
end

function dmount
    udisksctl mount -b $argv
end

function dunmount 
    udisksctl unmount -b $argv
end

function mountISO
	udisksctl loop-setup -r -f $argv
end

function unmountISO
	udisksctl loop-delete -b $argv
end

function audioToMP3
    ffmpeg -i $argv[1] -acodec mp3 $argv[1].mp3
end

function restartWlan
    rfkill block wlan && sleep 3s && rfkill unblock wlan && echo "Wifi reiniciado"
end

function prettyJSON 
	python -m json.tool $argv
end
