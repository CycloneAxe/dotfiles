# 树形打印目录
# usage: "tree" or "tree /tmp/"
function tree() {
	local _args="$@"
	local _path=${_args:-.}

	find "$_path" -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'
}

# 查看端口
# usage: "port 8000"
function port() {
	lsof -i tcp:$1
}

# 查看所有端口
# usage: "ports"
function ports() {
	lsof -Pni4 | grep LISTEN
}
