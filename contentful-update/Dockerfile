FROM node:10-slim

LABEL "com.github.actions.name"="Contentful Update"
LABEL "com.github.actions.description"="Takes migration script and runs them against Contentful"
LABEL "com.github.actions.icon"="book"
LABEL "com.github.actions.color"="blue"

LABEL "repository"="http://github.com/shy/ti4-action"
LABEL "homepage"="http://github.com/shy/ti4-action"
LABEL "maintainer"="Shy <shy@contentful.com>"

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
