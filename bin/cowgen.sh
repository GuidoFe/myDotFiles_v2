#!/bin/bash
COWS="$HOME/.cows"
OUT="$HOME/.asciiart"
if [[ ! -f $COWS ]]; then
    echo "File cows not found" > $OUT
    exit 1
fi
NCOWS=`cat $COWS | wc -l`
NLINE=$(( ( RANDOM % $NCOWS )  + 1 ))
COW=`cat $COWS | head -n $NLINE | tail -n 1`
fortune -s 100% hitchhiker | cowsay -W 30 -f $COW > $OUT
