action "Contentful Update" {
  uses = "./contentful-update/"
}

workflow "New workflow" {
  on = "push"
  resolves = ["Deploy to Netlify"]
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

action "Trigger Netlify Rebuild" {
  needs = "Master"
  uses = "./contentful-update"
  needs = ["Migrate"]
}
