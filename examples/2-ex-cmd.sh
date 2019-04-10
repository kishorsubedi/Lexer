#!/usr/bin/env bash

if cat 2-ex-input.txt | ../bin/pr01 2-ex-program.ns >2-ex-output.txt 2>2-ex-error.txt
then
    rm 2-ex-error.txt
else
    cat 2-ex-output.txt >>2-ex-error.txt
    echo "lexing failure" >2-ex-output.txt
fi
