#!/usr/bin/env bash

# The following options are the equivalent of set -eux
# exit the script if we run into errors (-e)
set -o errexit
# accessing an unset variable or parameter should cause an error (-u)
set -o nounset
# print a trace of commands (-x)
set -x xtrace

#  Trap non-normal exit signals: 1/HUP, 2/INT, 3/QUIT, 15/TERM, ERR
trap founderror 1 2 3 15 ERR

founderror()
{
        exit 1
}

exitscript()
{
        #remove lock file
        #rm $lockfile
        exit 0
}

declare -r script_dir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )


# Wait for all background processes to finish
wait 

exitscript
