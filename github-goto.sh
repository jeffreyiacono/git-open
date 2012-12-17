#!/bin/bash

set -e

function usage {
  echo "Usage: $0 [user name] <repo name>"
  echo "Note: user name will default to \$GITHUB_USER or your \`git config --get github.user\` entry."
}

if [ $# = 0 ]; then
  echo "Error: must pass repo name to open"
  usage
  exit 1
elif [ "$1" = "-h" ]; then
  usage
  exit 0
elif [ "$1" = "-v" ]; then
  echo "version 1.0"
  exit 0
fi

baseurl=${GITHUB_URL:-"https://github.com"}

if [ $# = 1 ]; then
  username=${GITHUB_USER:-$(git config --get github.user)}
  repo=$1
else
  username=$1
  repo=$2
fi

if [ -n $DEBUG ]; then
  echo $baseurl/$username/$repo
else
  open $baseurl/$username/$repo
fi
