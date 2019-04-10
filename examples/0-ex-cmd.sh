#!/usr/bin/env bash

if cat 0-ex-input.txt | ../bin/pr01 0-ex-program.ns >0-ex-output.txt 2>0-ex-error.txt
then
    rm 0-ex-error.txt
else
    cat 0-ex-output.txt >>0-ex-error.txt
    echo "lexing failure" >0-ex-output.txt
fi
