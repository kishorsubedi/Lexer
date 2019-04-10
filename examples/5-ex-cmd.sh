#!/usr/bin/env bash

if cat 5-ex-input.txt | ../bin/pr01 5-ex-program.ns >5-ex-output.txt 2>5-ex-error.txt
then
    rm 5-ex-error.txt
else
    cat 5-ex-output.txt >>5-ex-error.txt
    echo "lexing failure" >5-ex-output.txt
fi
