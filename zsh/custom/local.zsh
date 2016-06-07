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

# path=(
# 	/usr/local/sbin
# 	$PATH
#)

# 增加此项，隐藏路径前面的用户名
# DEFAULT_USER="$(whoami)"
WORKSPACE_DIR="$HOME/WorkSpace"

hash -d workspace="$WORKSPACE_DIR"
hash -d code="$WORKSPACE_DIR/Repository/Code"

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Ruby
# if [[ -e $HOME/.rvm/bin ]]; then
# 	export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
# 	[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
# fi

# Python
# default pyen root: ~/.pyenv
# export PYENV_ROOT=/usr/local/var/pyenv
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi

# Java
# export JAVA_HOME="`/usr/libexec/java_home -v 1.8`"
export JAVA7_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_80.jdk/Contents/Home
export JAVA8_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_66.jdk/Contents/Home
export JAVA_HOME=$JAVA8_HOME
alias jdk8='export JAVA_HOME=$JAVA_8_HOME'

# Android
if brew list | grep android-sdk > /dev/null; then
	export ANDROID_HOME=/usr/local/opt/android-sdk
	export PATH="$ANDROID_HOME/platform-tools:$PATH"
	export PATH="$ANDROID_HOME/tools:$PATH"
fi

# Laravel
if [[ -e $HOME/.composer/vendor/bin ]]; then
	export PATH="$PATH:$HOME/.composer/vendor/bin"
fi

# NodeJS
# if brew list | grep nvm > /dev/null; then
# 	export NVM_DIR=$HOME/.nvm
# 	[[ -s $(brew --prefix nvm)/nvm.sh ]] && source $(brew --prefix nvm)/nvm.sh
# 	# nvm alias default 0.10
# fi
