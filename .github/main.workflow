action "Contentful Update" {
  uses = "./contentful-update/"
}

workflow "New workflow" {
  on = "push"
  resolves = ["Migrate"]
}

action "Build" {
  uses = "actions/npm@6309cd9"
  args = "install"
}

action "Migrate" {
  uses = "actions/npm@6309cd9"
  needs = ["Build"]
  secrets = ["spaceId", "accessToken"]
  args = "run-script migrate $spaceId $GITHUB_REF $accessToken"
}
