# editor
alias subl='open -a "Sublime Text"'
alias mou='open -a "Mou"'
alias vi='vim'
alias vim=/usr/local/bin/vim

alias -s rb=ruby
alias -s php=php
alias -s py=python3

# encoding
alias javac='javac -J-Dfile.encoding=UTF-8 -encoding UTF-8'
alias java='java -Dfile.encoding=UTF-8'
# alias jdb='jdb -J-Dfile.encoding=UTF-8 -encoding UTF-8'

# ls colors
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
alias pgem='proxychains4 gem'

# MySQL
alias mysql=/usr/local/opt/mysql/bin/mysql
alias mysqladmin=/usr/local/opt/mysql/bin/mysqladmin

# Laravel Generator Stuff
alias g:m="php artisan generate:model"
alias g:c="php artisan generate:controller"
alias g:v="php artisan generate:view"
alias g:s="php artisan generate:seed"
alias g:mig="php artisan generate:migration"
alias g:r="php artisan generate:resource"

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

alias videoDownload='python3 ~github/you-get/you-get'
alias gulp="gulp --require coffee-script/register"


# Android
alias 9patch="open /usr/local/opt/android-sdk/tools/draw9patch"