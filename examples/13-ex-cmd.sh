#!/usr/bin/env bash

if cat 13-ex-input.txt | ../bin/pr01 13-ex-program.ns >13-ex-output.txt 2>13-ex-error.txt
then
    rm 13-ex-error.txt
else
    cat 13-ex-output.txt >>13-ex-error.txt
    echo "lexing failure" >13-ex-output.txt
fi
