#!/bin/bash

patches=$(find ../patch -name *.patch | sort)



for i in $patches; 
do 	
    echo $i
    patch -p1 <$i || exit 1; 
done

