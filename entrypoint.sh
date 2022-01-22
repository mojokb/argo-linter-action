#!/bin/sh -l

result=$(argo lint --offline --kinds=workflows -o simple $1)
echo $result

if [[ "$result" == *"no linting errors found"* ]]; then
    echo 'Passed'
elif [[ "$result" == *"found nothing to lint"* ]]; then
    echo 'Passed'
else
    echo 'Failed'
    exit 1
fi
