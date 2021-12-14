
#! /bin/bash

if [ -z $1 ]
then
        echo "
        Usage: script [fileName]
        Example: script help.txt
        This script is used to recover a vim .swp file
        "
fi
filename="$1"
tempfile=".$filename.swp"
vim -u NONE -r "$tempfile" -c 'w! '"$filename"'' -c 'wq!'
