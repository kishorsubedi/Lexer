#!/usr/bin/env bash

if cat 16-ex-input.txt | ../bin/pr01 16-ex-program.ns >16-ex-output.txt 2>16-ex-error.txt
then
    rm 16-ex-error.txt
else
    cat 16-ex-output.txt >>16-ex-error.txt
    echo "lexing failure" >16-ex-output.txt
fi
