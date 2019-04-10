#!/usr/bin/env bash

if cat 17-ex-input.txt | ../bin/pr01 17-ex-program.ns >17-ex-output.txt 2>17-ex-error.txt
then
    rm 17-ex-error.txt
else
    cat 17-ex-output.txt >>17-ex-error.txt
    echo "lexing failure" >17-ex-output.txt
fi
