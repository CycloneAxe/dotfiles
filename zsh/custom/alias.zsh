# editor
# alias subl='open -a "Sublime Text"'
alias mou='open -a "Mou"'
alias vi='vim'
# alias vim=/usr/local/bin/vim

# example
# ./main.rb -> ruby ./main.rb
# alias -s rb=ruby
# alias -s php=php
# alias -s py=python3
alias -s tar="tar -xvf"
alias -s gz="tar -xzvf"
alias -s tgz="tar -xzvf"
alias -s bz2="tar -xjvf"
alias -s zip="unzip"

# encoding
alias javac='javac -J-Dfile.encoding=UTF-8 -encoding UTF-8'
alias java='java -Dfile.encoding=UTF-8'
# alias jdb='jdb -J-Dfile.encoding=UTF-8 -encoding UTF-8'

# ls colors
# alias ls='ls -F --show-control-chars --color=auto'
if brew list | grep coreutils > /dev/null; then
	PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"
	LS_OPTIONS="--color=auto"
	eval `gdircolors -b $HOME/.dir_colors`
fi
alias ls="ls $LS_OPTIONS"
alias ll="ls -l"
alias la="ls -a"
alias dir="dir $LS_OPTIONS"
alias vdir="vdir $LS_OPTIONS"
alias grep="grep $LS_OPTIONS"
alias fgrep="fgrep $LS_OPTIONS"
alias egrep="egrep $LS_OPTIONS"

# Proxy
# alias pgem='proxychains4 gem'

# safe rm
function __protect_rm {
	local DESTFILE=~/.Trash/rmData
	local DESTDIR=$DESTFILE/`date +%Y/%m/%d_%H_%M_%S`

	[[ ${1:0:1} == "-" ]] && shift
	[ "$#" = 0 ] && return 1

	[[ -d "$DESTDIR" ]] || mkdir -p "$DESTDIR"
	mv "$@" "$DESTDIR" && echo "$0 $@" >> "$DESTDIR/__command.txt"
	return $?
}
alias rm='__protect_rm'

# alias gulp="gulp --require coffee-script/register"

# Android
alias 9patch="open /usr/local/opt/android-sdk/tools/draw9patch"

# iOS cocoapods
alias fastpodinstall="pod install --verbose --no-repo-update"
alias fastpodupdate="pod update --verbose --no-repo-update"

# Docker
alias start-docker="eval $(docker-machine env)"

# npm
## cnpm
alias for cnpm\nalias cnpm="npm --registry=https://registry.npm.taobao.org --cache=$HOME/.npm/.cache/cnpm --disturl=https://npm.taobao.org/dist --userconfig=$HOME/.cnpmrc"

# Utilities
alias cleanprint='
find . -name "*.DS_Store" -print;
find . -name "*.DS_Store" -print;
find . -name "*._DS_Store" -print;
find . -name "._.DS_Store" -print;
find . -name ".DS_Store" -print;
find . -name "Thumbs.db" -print;
find . -name "._.*" -print;
find . -name "._*" -print ;
'
alias cleanrm='
find . -name "*.DS_Store" -delete;
find . -name "*.DS_Store" -delete;
find . -name "*._DS_Store" -delete;
find . -name "._.DS_Store" -delete;
find . -name ".DS_Store" -delete;
find . -name "Thumbs.db" -delete;
find . -name "._.*" -delete;
find . -name "._*" -delete ;
'

# SSH fast connection
alias sshphphub="ssh root@123.59.52.94"
alias sshredbang="ssh root@123.57.60.71"
alias sshtvtalk="ssh root@123.206.14.107"