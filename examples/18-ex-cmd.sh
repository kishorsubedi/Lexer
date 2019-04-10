#!/usr/bin/env bash

if cat 18-ex-input.txt | ../bin/pr01 18-ex-program.ns >18-ex-output.txt 2>18-ex-error.txt
then
    rm 18-ex-error.txt
else
    cat 18-ex-output.txt >>18-ex-error.txt
    echo "lexing failure" >18-ex-output.txt
fi
