#!/usr/bin/env bash

if cat 12-ex-input.txt | ../bin/pr01 12-ex-program.ns >12-ex-output.txt 2>12-ex-error.txt
then
    rm 12-ex-error.txt
else
    cat 12-ex-output.txt >>12-ex-error.txt
    echo "lexing failure" >12-ex-output.txt
fi
