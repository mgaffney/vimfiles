#!/usr/bin/env bash

# The following options are the equivalent of set -eux
# exit the script if we run into errors (-e)
set -o errexit
# accessing an unset variable or parameter should cause an error (-u)
set -o nounset
# print a trace of commands (-x)
# set -x xtrace

#  Trap non-normal exit signals: 1/HUP, 2/INT, 3/QUIT, 15/TERM, ERR
trap caught_error 1 2 3 15 ERR

function caught_error() {
  exit 1
}

function exitscript() {
  exit 0
}

function err() {
  echo "$@" >&2
}

declare -r SCRIPT_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )


# Wait for all background processes to finish
wait
exitscript
