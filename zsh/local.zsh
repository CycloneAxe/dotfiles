# export PATH=$HOME/bin:/usr/local/bin:$PATH
# plugins=(git svn autojump)

#path=(
#	/usr/local/bin
#	/usr/bin
#	/bin
#	/usr/sbin
#	/sbin
#	/usr/local/bin
#)

DEV_DIR="$HOME/Workspace"
WWW_DIR="$HOME/Sites"

hash -d dev="$DEV_DIR"
hash -d www="$WWW_DIR"
hash -d laravel="$DEV_DIR/laravel"
hash -d github="$DEV_DIR/github"

function tree() {
	_args="$@"
	_path=${_args:-.}

	find "$_path" -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'
}