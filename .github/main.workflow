action "Contentful Update" {
  uses = "./contentful-update/"
}

workflow "New workflow" {
  on = "push"
  resolves = ["Contentful Update-1"]
}

action "Build" {
  uses = "actions/npm@6309cd9"
  args = "install"
}

action "Contentful Update-1" {
  uses = "./contentful-update"
  needs = ["Build"]
}
