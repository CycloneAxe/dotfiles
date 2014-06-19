# export PATH=$HOME/bin:/usr/local/bin:$PATH
# plugins=(git svn autojump)

#path=(
#	/Users/Cyclone/bin
#	/usr/local/bin
#	/usr/bin
#	/bin
#	/usr/sbin
#	/sbin
#	/usr/local/bin
#)

# 增加此项，隐藏路径前面的用户名
# DEFAULT_USER="$(whoami)"
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
