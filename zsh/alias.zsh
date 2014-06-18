#alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"

# editor
alias subl='open -a "Sublime Text"'
alias vi='vim'
alias vim=/usr/local/bin/vim

# encoding
alias javac='javac -J-Dfile.encoding=UTF-8 -encoding UTF-8'
alias java='java -Dfile.encoding=UTF-8'

alias art='php artisan'

export devdir='~/Workspace'
alias dev='cd $devdir'
alias www='cd ~/Sites'
alias cdlaravel='cd $devdir/laravel'
alias cdgithub='cd $devdir/github'