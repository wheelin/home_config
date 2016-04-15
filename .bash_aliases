alias keyboard='sudo dpkg-reconfigure keyboard-configuration'
alias couleur_3='mplayer -playlist http://stream.srg-ssr.ch/couleur3/mp3_128.m3u'
alias mkdir='mkdir -p'
alias rmd='rm -r'
alias ..='cdl ..'
alias ...='cdl ../..'
alias ser='sudo pacman -Ss'
alias ins='sudo pacman -S'
alias delp='sudo pacman -Rs'
alias cpr='cp -r'
alias clean='sudo pacman -Sc'
alias update='sudo pacman -Syu'
alias pins='sudo pip install'
alias music='find ~/Dropbox/Musique \( -iname "*.mp3" -o -iname "*.ogg" -o -iname "*.wma" -iname "*.m4a" \) -exec mplayer -shuffle '{}' +'
alias reboot='sudo reboot'
alias srcb='source $HOME/.bashrc'
alias list='pacman -Qe'


mkcd()
{
	if [[ ! -z $1 ]]; then
		mkdir $1
		builtin cd $1
	else
		echo "Give a directory name."
	fi
}

orphans() {
  if [[ ! -n $(pacman -Qdt) ]]; then
    echo "No orphans to remove."
  else
    sudo pacman -Rns $(pacman -Qdtq)
  fi
}

cdl()
{
	if [[ -z $1 ]]; then
		builtin cd
		clear
	else
		if [[ $(la $1 | wc -l) -le 100 ]]; then
			builtin cd $1
			clear
			la
		elif [[ $(ls $1 | wc -l) -le 100 ]]; then
			builtin cd $1
			clear
			ls
		else
			builtin cd $1
			clear
		fi
	fi
}

count()
{
	ls **/*.$1 | wc -l
}

random()
{
	val=$(rand)
	echo $((val % $1))
}


