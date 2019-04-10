#!/usr/bin/env bash

if cat 3-ex-input.txt | ../bin/pr01 3-ex-program.ns >3-ex-output.txt 2>3-ex-error.txt
then
    rm 3-ex-error.txt
else
    cat 3-ex-output.txt >>3-ex-error.txt
    echo "lexing failure" >3-ex-output.txt
fi
