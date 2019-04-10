#!/usr/bin/env bash

if cat 11-ex-input.txt | ../bin/pr01 11-ex-program.ns >11-ex-output.txt 2>11-ex-error.txt
then
    rm 11-ex-error.txt
else
    cat 11-ex-output.txt >>11-ex-error.txt
    echo "lexing failure" >11-ex-output.txt
fi
