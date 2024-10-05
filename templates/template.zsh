#!/usr/bin/env zsh

# The following options are the equivalent of set -eux
# exit the script if we run into errors (-e)
# set -o errexit
# accessing an unset variable or parameter should cause an error (-u)
# set -o nounset
# print a trace of commands (-x)
# set -o xtrace

SCRIPTDIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
readonly SCRIPTDIR

SCRIPTNAME=${0:t}
readonly SCRIPTNAME

function err() {
  echo "$@" >&2
}

function help() {
  cat >&2 <<HELP
  Usage:
    ${SCRIPTNAME} file

    file       the file to ....
HELP
}

function main() {
  local file="$1"
  readonly file

  if [[ -z "${file}" ]] ; then
    help
    return 1
  fi
}

main "$@"
