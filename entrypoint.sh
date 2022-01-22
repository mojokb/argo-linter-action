#!/bin/sh -l

argo lint --offline --kinds=workflows -o simple $1
if [ $? -eq 0 ]; then
    echo 0
else
    echo 1
fi
