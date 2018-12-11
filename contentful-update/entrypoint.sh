#!/bin/sh

set -e

prefix="refs/heads/"
branch=${GITHUB_REF#"$prefix"}

npm install

if test "$branch" = 'master'; then
    curl -X POST -d {} https://api.netlify.com/build_hooks/5c101b97f880678ed409718d
else
    sh -c "echo branch"
    sh -c "echo $branch"
fi
