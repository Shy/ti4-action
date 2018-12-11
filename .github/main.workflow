action "Contentful Update" {
  uses = "./contentful-update/"
}

workflow "New workflow" {
  on = "push"
  resolves = ["GitHub Action for npm"]
}

action "Build" {
  uses = "actions/npm@6309cd9"
  args = "install"
}

action "GitHub Action for npm" {
  uses = "actions/npm@6309cd9"
  needs = ["Build"]
  secrets = ["spaceId", "accessToken"]
  args = "migrate $spaceId $GITHUB_REF $accessToken"
}
