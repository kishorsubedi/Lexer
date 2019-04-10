#!/usr/bin/env bash

if cat 10-ex-input.txt | ../bin/pr01 10-ex-program.ns >10-ex-output.txt 2>10-ex-error.txt
then
    rm 10-ex-error.txt
else
    cat 10-ex-output.txt >>10-ex-error.txt
    echo "lexing failure" >10-ex-output.txt
fi
