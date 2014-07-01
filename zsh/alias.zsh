# editor
alias subl='open -a "Sublime Text"'
alias mou='open -a "Mou"'
alias vi='vim'
alias vim=/usr/local/bin/vim

# encoding
alias javac='javac -J-Dfile.encoding=UTF-8 -encoding UTF-8'
alias java='java -Dfile.encoding=UTF-8'

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

# proxy
alias pgem='proxychains4 gem'

# mysql
alias mysql=/usr/local/mysql/bin/mysql
alias mysqladmin=/usr/local/mysql/bin/mysqladmin

# Generator Stuff
alias g:m="php artisan generate:model"
alias g:c="php artisan generate:controller"
alias g:v="php artisan generate:view"
alias g:s="php artisan generate:seed"
alias g:mig="php artisan generate:migration"
alias g:r="php artisan generate:resource"

# rm
function __protect_rm {
	args="$@"
	sub_dir=`date +%y_%m_%d_%H_%M_%S`

	if [ "$#"x != "1"x ]; then
		if [ "${args:0:1}"x = "-"x ]; then
			args="${@:2}"
		fi
	fi

	dir=~/.Trash/rmData/$sub_dir
	[[ -d $dir ]] || mkdir -p $dir
	cmd="mv --target-directory $dir $args"
	eval $cmd
}
alias rm='__protect_rm'
