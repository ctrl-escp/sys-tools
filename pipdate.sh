#!/bin/bash
# pipdate
#   Update all outdated packages
#
# Usage:
#       >pipdate.sh [/path/to/python]
#
#       Use either user provided python executable or one found in path

if [[ "$#" -eq 1 ]]; then
    PYEXEC="$(command -v "$1")"
else
    PYEXEC="$(command -v python3)"
fi
echo "Using the following Python executable: $PYEXEC"

OUTDATED=$($PYEXEC -m pip list -o | awk 'FNR > 2 {print $1}' | tr "\n" " ")

if [[ $? == 1 ]]; then
    echo "There was an issue running $PYEXEC -m pip. Program aborted."
fi
if [[ -z "$OUTDATED" ]]; then
    echo "No outdated packages found"
else
    {
        echo "Updating the following $(echo "$OUTDATED" | wc -w) packages: $OUTDATED"
        # Update pip first if there's a newer version
        if [[ "$OUTDATED" =~ .*" pip ".* ]]; then
            $PYEXEC -m pip install -U pip --user
        fi
        
        for package in $OUTDATED 
        do
            $PYEXEC -m pip install -U "$package" --user
        done
    }
fi