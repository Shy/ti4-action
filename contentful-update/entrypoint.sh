#!/bin/sh

set -e

prefix="refs/heads/"
branch=${GITHUB_REF#"$prefix"}

if [ -z "$branch" = 'master' ]; then
    sh -c "echo master"
else
    sh -c "echo branch"
    sh -c "echo $branch"
fi
