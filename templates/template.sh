#!/usr/bin/env bash

# The following options are the equivalent of set -eux
# exit the script if we run into errors (-e)
# set -o errexit
# accessing an unset variable or parameter should cause an error (-u)
# set -o nounset
# print a trace of commands (-x)
# set -o xtrace

declare -r SCRIPT_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

function err() {
  echo "$@" >&2
}

function help() {
  cat >&2 <<HELP
  Usage:
    $0 file

    file       the file to ....
HELP
}

function main() {
  local readonly file="$1"

  if [[ ! -s "${file}" ]] ; then
    help
    return 1
  fi
}

main "$@"
