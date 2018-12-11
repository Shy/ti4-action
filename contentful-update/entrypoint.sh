#!/bin/sh

set -e

prefix="refs/heads/"
branch=${GITHUB_REF#"$prefix"}

npm install

if test "$branch" = 'master'; then
    sh -c "echo master"
else
    sh -c "echo branch"
    sh -c "echo $branch"
fi

migrate.js $spaceId $branch $accessToken
