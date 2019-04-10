#!/usr/bin/env bash

if cat 9-ex-input.txt | ../bin/pr01 9-ex-program.ns >9-ex-output.txt 2>9-ex-error.txt
then
    rm 9-ex-error.txt
else
    cat 9-ex-output.txt >>9-ex-error.txt
    echo "lexing failure" >9-ex-output.txt
fi
