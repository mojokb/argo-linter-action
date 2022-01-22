#!/bin/sh -l

argo lint --offline --kinds=workflows -o simple $1
if [ $? -eq 0 ]; then
    echo 'Passed'
else
    exit 1
fi
