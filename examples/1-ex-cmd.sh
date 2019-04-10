#!/usr/bin/env bash

if cat 1-ex-input.txt | ../bin/pr01 1-ex-program.ns >1-ex-output.txt 2>1-ex-error.txt
then
    rm 1-ex-error.txt
else
    cat 1-ex-output.txt >>1-ex-error.txt
    echo "lexing failure" >1-ex-output.txt
fi
