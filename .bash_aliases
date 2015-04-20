alias keyboard='sudo dpkg-reconfigure keyboard-configuration'
alias couleur_3='mplayer -playlist http://stream.srg-ssr.ch/couleur3/mp3_128.m3u'
alias mkdir='mkdir -p'
alias rmd='rm -r'
alias ..='cdl ..'
alias ...='cdl ../..'
alias ser='yaourt -Ss'
alias ins='yaourt -S'
alias delp='yaourt -Rs'
alias cpr='cp -r'
alias untar='tar -xvjf'
alias clean='sudo paccache -d'
alias update='yaourt -Syu'
alias pins='sudo pip install'
alias music='find ~/Dropbox/Musique \( -iname "*\.mp3" -o -iname "*.ogg" -o -iname "*.wma" \) -exec mplayer -shuffle '{}' +'
alias reboot='sudo reboot'

mkcd()
{
	if [[ ! -z $1 ]]; then
		mkdir $1
		builtin cd $1
	else
		echo "Give a directory name."
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

alias dropbox='cd ~/Dropbox/'
alias home='cd'
alias workspace='cd ~/workspace/'
