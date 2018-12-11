FROM node:10-slim

LABEL "com.github.actions.name"="Netlify Rebuild"
LABEL "com.github.actions.description"="Calls webhook to trigger rebuild on netlify"
LABEL "com.github.actions.icon"="book"
LABEL "com.github.actions.color"="blue"

LABEL "repository"="http://github.com/shy/ti4-action"
LABEL "homepage"="http://github.com/shy/ti4-action"
LABEL "maintainer"="Shy <shy@contentful.com>"

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
