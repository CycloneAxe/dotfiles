# export PATH=$HOME/bin:/usr/local/bin:$PATH
# plugins=(git svn autojump)

function tree() {
	_args="$@"
	_path=${_args:-.}

	find "$_path" -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'
}