#!/bin/bash

# Generates PDF files for all hours

HOURS=("Matins" "Lauds" "Prime" "Terce" "Sext" "None" "Vespers" "Compline")

REPO_ROOT=$(pwd ..)

for hour in ${HOURS[@]}
do
    cd $REPO_ROOT/$hour
    # TODO: Make this easier to interrupt.
    # Currently, sending SIGINT via Ctrl-C interrupts `lualatex` on whatever iteration of the loop
    # we happen to be, and after exiting that particular invocation of `lualatex`, the next loop
    # iteration continues. Ideally, a single input of Ctrl-C would suffice for stopping this entire
    # script.
    lualatex Little_Office_$hour.tex
    mv Little_Office_$hour.pdf $REPO_ROOT/PDFs
done

