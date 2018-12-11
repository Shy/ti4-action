#!/bin/sh

set -e

if [ -z "$GITHUB_REF" == 'refs/heads/master' ]; then
    sh -c "echo master"
else
    sh -c "echo branch"
    prefix="refs/heads/"
    branch=${GITHUB_REF#"$prefix"}
    sh -c "echo $branch"
fi
