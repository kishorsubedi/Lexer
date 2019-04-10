#!/usr/bin/env bash

if cat 4-ex-input.txt | ../bin/pr01 4-ex-program.ns >4-ex-output.txt 2>4-ex-error.txt
then
    rm 4-ex-error.txt
else
    cat 4-ex-output.txt >>4-ex-error.txt
    echo "lexing failure" >4-ex-output.txt
fi
