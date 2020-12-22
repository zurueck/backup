#!/bin/bash

if [ -f $1 ]; then
    sed 's/[ \t]*$//g' $1 >sedResult
    diff $1 sedResult >/dev/null
    if [ $? == 0 ]; then
        echo file does not change
    else
        echo output sedResult
    fi
fi

if [ -d $1 ]; then
    echo 1
fi


