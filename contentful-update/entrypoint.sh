#!/bin/sh

set -e

if [ -z "$GITHUB_REF" ]; then
    sh -c "echo master"
else
    sh -c "echo branch"
    sh -c "$GITHUB_REF"
fi

sh -c "npm $*"



