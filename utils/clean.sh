#!/bin/bash

# Deletes files left over from PDF generation

HOURS=("Matins" "Lauds" "Prime" "Terce" "Sext" "None" "Vespers" "Compline")
EXTENSIONS=(".aux" ".gaux" ".log" ".gtex")

REPO_ROOT=$(pwd ..)

for hour in ${HOURS[@]}
do
    # First, delete any `tmp-gre` directories.
    temp_dir=$(find $REPO_ROOT/$hour -name tmp-gre)
    if [ ! -z "${temp_dir}" ]; then
        echo "Deleting $temp_dir"
        rm -r $temp_dir
    fi

    # Then, delete other generated files.
    for extension in ${EXTENSIONS[@]}
    do
        candidate=$(find $REPO_ROOT/$hour -name "*$extension")
        if [ ! -z "${candidate}" ]; then
            echo "Deleting $candidate"
            rm $candidate
        fi
    done
done

