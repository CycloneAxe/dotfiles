# export PATH=$HOME/bin:/usr/local/bin:$PATH
# plugins=(git svn autojump)

#path=(
#	/Users/Cyclone/bin
#	/usr/local/bin
#	/usr/local/sbin
#	/usr/bin
#	/bin
#	/usr/sbin
#	/sbin
#	/usr/local/bin
#)

path=(
	/usr/local/sbin
	/usr/local/opt/gnu-sed/libexec/gnubin
	$PATH
)

# 增加此项，隐藏路径前面的用户名
# DEFAULT_USER="$(whoami)"
DEV_DIR="$HOME/Workspace"
WWW_DIR="$HOME/Sites"

hash -d dev="$DEV_DIR"
hash -d www="$WWW_DIR"
hash -d laravel="$DEV_DIR/laravel"
hash -d git="$DEV_DIR/git"
