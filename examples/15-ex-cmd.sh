#!/usr/bin/env bash

if cat 15-ex-input.txt | ../bin/pr01 15-ex-program.ns >15-ex-output.txt 2>15-ex-error.txt
then
    rm 15-ex-error.txt
else
    cat 15-ex-output.txt >>15-ex-error.txt
    echo "lexing failure" >15-ex-output.txt
fi
