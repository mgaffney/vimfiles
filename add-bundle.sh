#!/usr/bin/env bash

if [ $# -lt 1 ]; then
	echo "USAGE: $0 <repository>"
	exit 1
fi

# git submodule add git@github.com:bling/vim-airline.git bundle/vim-airline
repo=$1
_temp=${repo#*/}
bundle=${_temp%.*}
target="bundle/$bundle"

git submodule add $repo $target
echo ' ignore = dirty' >> .gitmodules
git add .gitmodules $target
git commit -m "Install $bundle plugin"

echo "$bundle installed"
