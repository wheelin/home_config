function fish_prompt
    set hour (date +"%X")
    set_color red
    printf "%s : " $hour
    set_color cyan
    echo (pwd)
    set_color green
    echo '>>> '
end

# Path additions
set PATH $PATH /home/greg/.cargo/bin
set PATH $PATH /home/greg/Apps
set PATH $PATH /home/greg/.local/bin
# aliases

function couleur_3
    mpv http://stream.srg-ssr.ch/couleur3/mp3_128.m3u
end

function ser
    command pacman -Ss $argv
end

function ins
    command sudo pacman -S $argv
end

function delp
    command sudo pacman -Rs $argv
end

function update
    command sudo pacman -Syu
end

function listp
    command pacman -Qqe
end

function reboot
    command sudo reboot
end

function orphans
    sudo pacman -Rns (pacman -Qdtq)
end

function dis_kbd_light
    dbus-send --system --type=method_call  --dest="org.freedesktop.UPower" "/org/freedesktop/UPower/KbdBacklight" "org.freedesktop.UPower.KbdBacklight.SetBrightness" int32:0
end

function mntpi
    sudo sshfs -o allow_other,default_permissions pi@172.22.22.60:/home/pi /mnt/pi/
end 

function sshpi
    ssh pi@172.22.22.60
end 

function tree
    command exa --tree --level=3 $argv
end

function yturl
    command youtube-dl -x --no-playlist --audio-format mp3 $argv -o "/home/greg/Music/mps/%(title)s.%(ext)s"
end 

function ytser
    command youtube-dl -x --no-playlist --audio-format mp3 ytsearch:$argv -o "/home/greg/Music/mps/%(title)s.%(ext)s"
end 

function ytdlpl
    command youtube-dl -x --audio-format mp3 $argv -o "/home/greg/Music/mps/%(creator)s/%(creator)s_%(title)s.%(ext)s"
end

function op 
    command xdg-open $argv
end
