#!/usr/bin/env bash

if cat 8-ex-input.txt | ../bin/pr01 8-ex-program.ns >8-ex-output.txt 2>8-ex-error.txt
then
    rm 8-ex-error.txt
else
    cat 8-ex-output.txt >>8-ex-error.txt
    echo "lexing failure" >8-ex-output.txt
fi
