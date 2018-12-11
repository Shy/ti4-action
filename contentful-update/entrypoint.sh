#!/bin/sh

set -e

if [ -z "$GITHUB_REF" ]; then
  echo "not defined"
else
  echo "defined"
  echo "$GITHUB_REF"
fi

sh -c "npm $*"



