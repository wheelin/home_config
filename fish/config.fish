


function fish_prompt
    set hour (date +"%X")
    set_color red
    printf "%s : " $hour
    set_color cyan
    echo (pwd)
    set_color green
    echo '>>> '
end

# aliases

function ta
    /opt/textadept/textadept $argv > /dev/null 2>&1 &
end

function music
    mplayer ~/Dropbox/Musique/**
end

function couleur_3
    mplayer -playlist http://stream.srg-ssr.ch/couleur3/mp3_128.m3u
end

function ser
    command sudo pacman -Ss $argv
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

function reboot
    command sudo reboot
end

function op
    xdg-open $argv > /dev/null 2>&1 &
end

function orphans
    sudo pacman -Rns (pacman -Qdtq)
end
