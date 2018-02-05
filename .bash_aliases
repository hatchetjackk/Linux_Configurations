## file location ~/.bash_aliases
## Aliases

# mysql mariadb
alias sqlroot='mysql -u root -p'

# Applications
alias reddit='rtv --theme solarized-dark'
alias music='gpmdp'

# Navigation
alias home='home'
alias mcd='mcd'
alias cd='cdls'
alias ct='ctree'
alias tree='tree -C'
alias mkdir='mkdir -p -v'

alias ls='ls --group-directories-first --time-style=+"%d.%m.%Y %H:%M" --color=auto -hFX'
alias ll='ls -l --group-directories-first --time-style=+"%d.%m.%Y %H:%M" --color=auto -F'
alias la='ls -a --group-directories-first --time-style=+"%d.%m.%Y %H:%M" --color=auto -F'
alias l='ls'
alias cl='clear'
alias h='history'
alias reload='source $HOME/.bashrc'
alias ..='cd ..'

# Gcal
alias gcal='gcalcli'

# System
alias sd='shutdown 0'
alias grep='grep --color=auto'
alias df='pydf'
alias disk='ncdu'

# Shortcuts
alias i3config='sudo nano -l ~/.config/i3/config'
alias xresources='sudo nano -l ~/.Xresources'
alias bash_aliases='sudo nano -l ~/.bash_aliases'
alias xreload='xrdb ~/.Xresources'

# Tar
alias ztar='tar czf'
alias ctar='tar cf'
alias xtar='tar xf'
alias xztar='tar xzf'

# Network
alias ping1='ping www.google.com'
alias extip='curl http://ipecho.net/plain; echo " < Public IP"'
alias wget='wget -c'
alias dos='sudo hping --rand-source --flood'

# MySQL
alias dblogin='mysql -u root -p'

# Fun 
alias matrix='termsaver matrix'
alias clock='termsaver clock'
#alias scrotw='scrot --count --delay 3 -s ~/Pictures/screenshots/%b%d::%H:%M:%S.png'
#alias scrot='scrot --count --delay 3 ~/Pictures/screenshots/%b%d::%H:%M:%S.png'

# misc
alias nano='nano -l'
alias rss='newsbeuter'

# Python
alias idle='idle -ei'

# Yaourt
alias y='yaourt'
alias ys='y -S'
alias yss='y -Ss'
alias yr='y -R'
alias yu='y -U'
alias yc='y -C --clean'
alias ysyu='y -Syu --aur'

# Pacman
alias search='sudo pacman -Ss'
alias install='sudo pacman -S'
alias update='sudo pacman -Syu'

## Functions

# Home Directory
home() {
	builtin cd "/home/$USER/"
}

# Perform LS after CD
cdls() {
	builtin cd "$*"
	RESULT=$?
	if [ "$RESULT" -eq 0 ]; then
		ls -CF --color='always'
	fi
}

# Run the TREE command after LS
ct() {
	builtin cd "$*"
	RESULT=$?
	if [ "$RESULT" - eq 0 ]; then
		tree -C
	fi
}

# Make a directory and CD into it immediately
mcd() {
	mkdir -pv $1
	cd $1
}


