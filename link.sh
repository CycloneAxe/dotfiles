#!/bin/bash

SRC=`pwd`
for i in `ls -1A`;
do
	echo $SRC/$i " -> " $HOME/$i
    # ln -s $SRC/$i $HOME/$i
done
# rm -rf $HOME/.git
# rm $HOME/link.sh
# rm $HOME/README.work