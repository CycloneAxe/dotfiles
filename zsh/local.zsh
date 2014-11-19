# export PATH=$HOME/bin:/usr/local/bin:$PATH
# plugins=(git svn autojump)

# path=(
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

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Android
export ANDROID_HOME=/usr/local/opt/android-sdk

# Ruby
if [[ -e $HOME/.rvm/bin ]]; then
	export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
	# [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
fi

# Laravel
if [[ -e $HOME/.composer/vendor/bin ]]; then
	export PATH="$PATH:$HOME/.composer/vendor/bin"
fi

# NodeJS
if brew list | grep nvm > /dev/null; then
	export NVM_DIR=$HOME/.nvm
	[[ -s $(brew --prefix nvm)/nvm.sh ]] && source $(brew --prefix nvm)/nvm.sh
	# nvm alias default 0.10
fi